//
//  RunnerViewController.swift
//  Runner
//
//  Created by Yudai Fujimoto on 2023/03/10.
//

import Foundation
import UIKit

import Vision
import VisionKit

class RunnerViewController: UIViewController {
    weak var delegate: RunnerViewControllerDelegate? = nil

    private var hasCameraOpend = false
    private var ret :String = ""

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    // ViewController が呼び出された時の処理
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // ViewController が生成された時の処理
    override func viewDidAppear(_ animated: Bool) {
        if(self.hasCameraOpend == false){
            actionPresentVision()
        }
    }

    // OOMの時の処理(?)
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 短形検出のメソッド
    func actionPresentVision(){
        let documentCameraViewController = VNDocumentCameraViewController()
        documentCameraViewController.delegate = self
        present(documentCameraViewController, animated: true)
    }

    // OCR
    func ocr(input: CGImage) {

        let request = VNRecognizeTextRequest()
        let handler = VNImageRequestHandler(cgImage: input)

        request.recognitionLanguages = ["ja"] // 日本語を指定

        do {
            try handler.perform([request])
        } catch let error {
            print(error)
        }

        guard let observations = request.results as? [VNRecognizedTextObservation] else { return }

        ret += "["
        
        for observation in observations {
            let box = observation.boundingBox // 位置のボックス
            let text = observation.topCandidates(1).first?.string ?? ""

            ret += "{"
            ret += "\"minX\":\(box.minX),"
            ret += "\"maxX\":\(box.maxX),"
            ret += "\"minY\":\(1.0-box.maxY),"
            ret += "\"maxY\":\(1.0-box.minY),"
            ret += "\"text\":\"\(text.replacingOccurrences(of: "\"", with: ""))\""
            ret += "},"

        }

        ret = String(ret.dropLast())
        ret += "]"
    }

}


// 上記のViewControllerを拡張して撮影後の処理を実装
extension RunnerViewController: VNDocumentCameraViewControllerDelegate {

    // 撮影画面で'Save'が押された
    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
        if let firstImage = scan.imageOfPage(at: 0).cgImage {
            //TODO
            ocr(input: firstImage)
            controller.dismiss(animated: true, completion: nil)
            self.hasCameraOpend = true
            delegate?.runnerViewControllerSendMessage(message: ret)
            dismiss(animated: true, completion: nil)
        }
    }

    // 撮影画面で'Cancel'が押された
    func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
        controller.dismiss(animated: true, completion: nil)
        self.hasCameraOpend = true
        delegate?.runnerViewControllerSendMessage(message: "")
        dismiss(animated: true, completion: nil)
    }

}

// OCRした結果を前のページに伝える
protocol RunnerViewControllerDelegate: AnyObject {
    func runnerViewControllerSendMessage(message: String)
}

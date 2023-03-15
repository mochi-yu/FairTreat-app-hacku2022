import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  // メソッドチャンネルと戻り値の定義
  private let methodChannelName = "warikan.flutter.dev/main"
  var callback: FlutterResult?

  private var flutterViewController: FlutterViewController {
      return self.window.rootViewController as! FlutterViewController
  }

  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let methodChannel = FlutterMethodChannel(name: methodChannelName, binaryMessenger: flutterViewController.binaryMessenger)
    methodChannel.setMethodCallHandler {
      [weak self] methodCall, result  in
        if methodCall.method == "OCR" {
            // Flutter側で呼び出されたメソッドをswift側で実行
            self?.callback = result
            self?.launchNativeScreen()
            return
        } else {
            //　Flutter側で呼ばれたメソッドが未定義
            result(FlutterMethodNotImplemented)
            return
        }
    }

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  // ViewControllerでカメラ等を表示
  func launchNativeScreen(){
    let viewController: RunnerViewController = RunnerViewController()
    viewController.delegate = self
    flutterViewController.present(viewController, animated: true, completion: nil)
  }
}

// ViewControllerのOCR結果をFlutterにコールバック
extension AppDelegate: RunnerViewControllerDelegate {
    func runnerViewControllerSendMessage(message: String) {
        self.callback?(message)
    }
}

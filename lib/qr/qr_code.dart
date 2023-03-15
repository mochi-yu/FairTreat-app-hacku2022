import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../components/header.dart';
import '../components/largeButton.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  // ホットリロード関係の設置だそうです
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          Text(
            'QRコードを撮影してください',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                borderColor: (result == null)? Colors.blue:Colors.green,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 20,),
              ),
            )
            
          ),

          Expanded(
            flex: 1,
            child:Container(
              color: Colors.grey[200],
              child: Center(
                child: LargeButton(
                  label: (result == null)? 'QRコードを探しています':'セッションに参加', 
                  onPressed: () {
                    // TODO: 参加ボタンが押された時の処理
                    // 現段階ては適当に出力してます。
                    if (result != null){
                      print('${result!.code}に参加しました。');                      
                    }
                })
              ),
            )
          ),
          
        ],
      ),
    );
  }

  // QR読み取りの処理
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        // TODO: 読み込まれたQRがセッションIDなのかのチェック
      });
    });
  }


  // ウィジェットが破棄される前に呼ばれる処理
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

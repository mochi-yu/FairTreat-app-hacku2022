import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../components/header.dart';
import '../components/largeButton.dart';
import '../data/export_data.dart';
import '../grpc/grpc_client.dart';

class QRScanPage extends StatefulWidget {
  const QRScanPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? roomID;
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
    UserData myself = ModalRoute.of(context)!.settings.arguments as UserData;
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
                borderColor: (roomID == null)? Colors.blue:Colors.green,
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
                  label: (roomID == null)? 'QRコードを探しています':'セッションに参加', 
                  onPressed: () {
                    if (roomID != null){
                      GrpcClient cl = GrpcClient();
                      sendAddUser(roomID!, cl, myself).then((value) => {
                        if(value == true){
                          sendGetBill(roomID!, cl).then((value) => {
                            Navigator.of(context).pushNamed(
                              '/warikanPage',
                              arguments: value
                            )
                          })
                        }
                      });

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
        roomID = scanData.code;
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

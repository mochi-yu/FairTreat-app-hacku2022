import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:warikan_app/grpc/grpc_client.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../data/export_data.dart';

class QRGenePage extends StatelessWidget {
  QRGenePage({super.key});

  @override
  Widget build(BuildContext context) {
    WarikanData warikan = ModalRoute.of(context)!.settings.arguments as WarikanData;
    warikan.isOpen = true;

    return Scaffold(
      appBar: const Header(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '他の人を招待できます。\nQRコードは後からでも確認できます。',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    QrImage(
                      data: warikan.roomID,
                      version: QrVersions.auto,
                      size: 180,
                    )
                  ],
                ),
              ),
            ),
          ),
          Footer(
            label: '割り勘に進む',
            onPressed: () async {
              GrpcClient cl = GrpcClient();
              warikan.guestList = await sendGetUserList(warikan, cl);
              Navigator.of(context).pushNamed(
                '/warikanPage',
                arguments: warikan,
              );
            }
          ),
        ],
      )
    );
  }
}
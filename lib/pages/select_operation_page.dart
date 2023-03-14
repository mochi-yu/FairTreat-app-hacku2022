import 'package:flutter/material.dart';
import 'package:warikan_app/qr/qr_code.dart';
import '../components/header.dart';
import '../components/largeButton.dart';

import 'dart:async';

class SelectOperationPage extends StatelessWidget {
  const SelectOperationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '操作を選んでください',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 30),
            LargeButton(label: 'レシートから入力', onPressed: () { print('レシートから入力'); }),
            const SizedBox(height: 40),
            LargeButton(label: '手動で入力', onPressed: () { print('手動で入力'); }),
            const SizedBox(height: 70),
            LargeButton(label: 'QRコードで割り勘に参加', onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QRViewExample()
                )
              );
              // 読み取りが完了した時の処理
              // TODO: 読み取り終了時に止まります
              print(result);
            }),
          ]
        ),
      ),
    );
  }




}
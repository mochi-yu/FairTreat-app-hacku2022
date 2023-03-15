import 'package:flutter/material.dart';
import 'package:warikan_app/qr/qr_code.dart';
import '../components/header.dart';
import '../components/largeButton.dart';
import '../data/export_data.dart';

class SelectOperationPage extends StatelessWidget {
  const SelectOperationPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserData myself = ModalRoute.of(context)!.settings.arguments as UserData;
    // print(myself.userName);

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
            LargeButton(label: 'レシートから入力', onPressed: () {
              print("レシートから入力");
              myself.isHost = true;
              /** ここでレシート読み取り画面への遷移を記述 */
            }),

            const SizedBox(height: 40),
            LargeButton(label: '手動で入力', onPressed: () {
              print('手動で入力'); 
              myself.isHost = true;
              Navigator.of(context).pushNamed(
                '/inputItemDataPage',
                arguments: WarikanData(
                  roomID: "",
                  hostUser: myself,
                  guestList: [myself],
                  itemList: [],
                )
              );
            }),

            const SizedBox(height: 70),
            LargeButton(label: 'QRコードで割り勘に参加', 
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRPage(),
                ));
              }
            ),
          ],
        ),
      ),
    );
  }




}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../components/editable_item_card_with_price.dart';
import '../components/add_item_card.dart';
import '../data/export_data.dart';
import '../grpc/grpc_client.dart';


class InputItemDataPage extends StatefulWidget {
  InputItemDataPage({super.key});

  // final List<UserData> testUser = [
  //   UserData(userName: "一郎", isHost: false, userID: 2),
  //   UserData(userName: "次郎", isHost: false, userID: 3),
  //   UserData(userName: "三郎", isHost: false, userID: 4),
  //   UserData(userName: "四郎", isHost: false, userID: 5),
  //   UserData(userName: "五郎", isHost: false, userID: 6),
  // ];

  @override
  _InputItemDataPage createState() => _InputItemDataPage();
}

class _InputItemDataPage extends State<InputItemDataPage> {
  @override
  Widget build(BuildContext context) {
    WarikanData warikan = ModalRoute.of(context)!.settings.arguments as WarikanData;

    return ChangeNotifierProvider(
      create: (BuildContext context) => WarikanDataNotifer(warikan: warikan),
      child: Scaffold(
        appBar: const Header(),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 55),
                      Text(
                        '品目と金額を修正・追加してください。',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25),
                      Consumer<WarikanDataNotifer>(
                        builder: (context, warikanData, _) {
                          return Column(
                            children: [
                              for(int i = 0; i < warikanData.getItemList.length; i++) ... {
                                EditableItemCardWithPrice(index: i, warikanDataNotifer: warikanData),
                              },
                              AddItemCard(warikanDataNotifer: warikanData),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            Consumer<WarikanDataNotifer>(
              builder: (context, warikanData, _) {
                return Footer(
                  label: "これで決定",
                  onPressed: () async {
                    for(int i = 0; i < widget.testUser.length; i++) {
                      warikanData.addJoiningUser(widget.testUser[i]);
                    }

                    WarikanData wada = warikanData.getWarikanData;
                    for(int i = 0; i < wada.itemList.length; i++) {
                      wada.itemList[i].id = i;
                    }

                    GrpcClient cl = GrpcClient();
                    sendCreateBill(wada, cl).then((value) {
                      Navigator.of(context).pushReplacementNamed(
                        '/qrGenePage',
                        arguments: warikan,
                      );
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
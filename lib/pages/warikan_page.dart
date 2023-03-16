// Input name page
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/header_with_return.dart';
import '../components/footer.dart';
import '../components/item_card_with_user.dart';
import '../data/export_data.dart';
import '../grpc/grpc_client.dart';

class WarikanPage extends StatefulWidget {
  const WarikanPage({super.key});

  @override
   _WarikanPage createState() => _WarikanPage();
}

class _WarikanPage extends State<WarikanPage> {

  @override
  Widget build(BuildContext context) {
    WarikanData warikanData = ModalRoute.of(context)!.settings.arguments as WarikanData;
    if(warikanData.isOpen) {
      Navigator.of(context).pushReplacementNamed(
        '/resultPage',
        arguments: warikanData,
      );
    }
    print(warikanData.itemList.length);

    return Scaffold(
      appBar: const HeaderWithReturn(),
      body: ChangeNotifierProvider<WarikanDataNotifer>(
        create: (BuildContext context) => WarikanDataNotifer(warikan: warikanData),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 55),
                      Text(
                        '割り振りを決めてください。',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25),
                      Consumer<WarikanDataNotifer>(
                        builder: (context, data, _) {
                          return Column(
                            children: [
                              for(int i = 0; i < warikanData.itemList.length; i++) ... {
                                ItemCardWithUser(index: i, warikanDataNotifer: data),
                              },
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
            Footer(
              label: "これで決定",
              onPressed: () async {
                print("割り勘確定を送信");
                GrpcClient cl = GrpcClient();
                sendCreateBill(warikanData, cl).then((value) {
                  print("割り勘結果を受信、ページを遷移します。");
                  Navigator.of(context).pushReplacementNamed(
                    '/resultPage',
                    arguments: value,
                  );
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}
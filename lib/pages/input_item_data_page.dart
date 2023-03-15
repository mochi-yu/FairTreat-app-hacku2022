import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../components/editable_item_card_with_price.dart';
import '../components/add_item_card.dart';
import '../data/export_data.dart';


class InputItemDataPage extends StatefulWidget {
  const InputItemDataPage({super.key});

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
                        '商品として追加するものを選んでください。\n品目の追加修正は後から行えます。',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25),
                      Consumer<WarikanDataNotifer>(
                        builder: (context, warikanData, _) {
                          return Column(
                            children: [
                              for(int i = 0; i < warikanData.getItemList.length; i++) ... {
                                EditableItemCardWithPrice(itemData: warikanData.getItemList[i]),
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
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      '/warikanPage',
                      arguments: warikanData.getWarikanData
                    );
                    // print("pushed これで決定");
                  }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
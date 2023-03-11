import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../components/item_card_with_checkbox.dart';

const List<String> _testString = [
  "商品名１",
  "ながああああああああああああああああいテキスト",
  "商品名２",
  "商品名３",
  "商品名４",
  "商品名５",
  "商品名６",
  "商品名７",
];

class SelectItemFromPhoto extends StatelessWidget {
  const SelectItemFromPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
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
                        '商品として追加するものを選んでください。\n品目の追加修正は後から行えます。',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 25),
                      for(int i = 0; i < _testString.length; i++) ... {
                        ItemCardWithCheckbox(label: _testString[i])
                      },
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            Footer(label: "aiueo", onPressed: () { print("pushed footer button."); }),
          ],
        )
      ),
    );
  }
}
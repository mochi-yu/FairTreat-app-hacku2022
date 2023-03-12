import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../components/editable_item_card_with_price.dart';
import '../components/add_item_card.dart';

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

const List<String> _testPrice = [
  "1,000円",
  "10,000円",
  "2,000円",
  "3,000円",
  "4,000円",
  "5,000円",
  "6,000円",
  "7,000円",
];

class InputItemDataPage extends StatelessWidget {
  const InputItemDataPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    const SizedBox(height: 55),
                    Text(
                      '商品として追加するものを選んでください。\n品目の追加修正は後から行えます。',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    for(int i = 0; i < _testString.length; i++) ... {
                      EditableItemCardWithPrice(label: _testString[i], price: _testPrice[i],)
                    },
                    const AddItemCard(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
          Footer(label: "これで決定", onPressed: () { print("pushed これで決定"); }),
        ],
      ),
    );
  }
}
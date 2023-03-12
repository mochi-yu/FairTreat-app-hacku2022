import 'package:flutter/material.dart';
import 'package:warikan_app/components/user_list_item_with_price.dart';
import '../components/header.dart';
import '../components/footer.dart';

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

const List<String> _testUser = [
  "ユーザ１",
  "ながああああああああああああああああいユーザ",
  "ユーザ２",
  "ユーザ３",
  "ユーザ４",
  "ユーザ５",
  "ユーザ６",
  "ユーザ７",
];

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
                  children: [
                    const SizedBox(height: 65),
                    Text(
                      '料金を割り振りました。',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        for(int i = 0; i < _testUser.length; i++) ... {
                          UserListItemWithPrice(price: _testPrice[i], user: _testUser[i])
                        }
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Footer(label: '終了', onPressed: () { print("終了"); })
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/header.dart';
import '../components/footer.dart';
import '../data/export_data.dart';
import '../components/user_list_item_with_price.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 前ページから
    List<ResultData> result = ModalRoute.of(context)!.settings.arguments as List<ResultData>;

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
                        for(int i = 0; i < result.length; i++) ... {
                          UserListItemWithPrice(price: result[i].price.toString(), user: result[i].user.userName)
                        }
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Footer(label: '終了', onPressed: () {
            print("アプリ終了");
            SystemNavigator.pop();
          })
        ],
      ),
    );
  }
}
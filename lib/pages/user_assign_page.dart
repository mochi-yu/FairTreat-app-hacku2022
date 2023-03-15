import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/item_card_with_price.dart';
import '../components/user_list_item_with_checkbox.dart';
import '../components/shortButton.dart';
import '../data/export_data.dart';

class UserAssignPage extends StatelessWidget {
  final WarikanDataNotifer warikanDataNotifer;
  final int index;

  const UserAssignPage({required this.warikanDataNotifer, required this.index, super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const Header(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 65),
            Text(
              '誰が支払いますか',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 30),
            ItemCardWithPrice(
              label: warikanDataNotifer.getItemList[index].itemName,
              price: warikanDataNotifer.getItemList[index].itemName
            ),
            const SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for(int i = 0; i < warikanDataNotifer.getUserList.length; i++) ... {
                  UserListItemWithCheckbox(label: warikanDataNotifer.getUserList[i].userName),
                }
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShortButton(color: const Color.fromARGB(255, 255, 198, 204), label: "削除", onPressed: () { Navigator.pop(context); }),
                const SizedBox(width: 50),
                ShortButton(color: const Color.fromARGB(255, 123, 255, 128), label: "決定", onPressed: () { Navigator.pop(context); }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
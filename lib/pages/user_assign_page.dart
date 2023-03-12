import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/item_card_with_price.dart';
import '../components/user_list_item_with_checkbox.dart';
import '../components/shortButton.dart';

class UserAssignPage extends StatelessWidget {
  final String label;
  final String price;
  final List<String> users;

  const UserAssignPage({required this.label, required this.users, required this.price, super.key});

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
            ItemCardWithPrice(label: label, price: price),
            const SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for(int i = 0; i < users.length; i++) ... {
                  UserListItemWithCheckbox(label: users[i]),
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
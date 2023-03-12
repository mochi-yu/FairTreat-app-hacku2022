import 'package:flutter/material.dart';

class UserListItemWithPrice extends StatelessWidget {
  final String user;
  final String price;

  const UserListItemWithPrice({required this.user, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                child: Text(
                  user,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              price,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.right,
            ),
          ]
        ),
      ),
    );
  }
}

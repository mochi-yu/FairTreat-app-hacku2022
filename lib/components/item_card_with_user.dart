import 'package:flutter/material.dart';
import 'package:warikan_app/pages/user_assign_page.dart';

class ItemCardWithUser extends StatefulWidget {
  final String label;
  final String price;
  final String user;

  const ItemCardWithUser({required this.label, required this.price, required this.user, super.key});

  @override
  _ItemCardWithUser createState() => _ItemCardWithUser();
}

class _ItemCardWithUser extends State<ItemCardWithUser> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: 330,
        child: Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    child: Text(
                      widget.label,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Text(
                  widget.price,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            subtitle: Text(
              widget.user,
            ),
          )
        ),
      ),
      onTap: () => { Navigator.push(context, MaterialPageRoute(builder: (context) => UserAssignPage(price: widget.price, label: widget.label, users: const ['User1', 'Uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuser2', 'User3'])))},
    );
  }
}
import 'package:flutter/material.dart';
import '../data/export_data.dart';
import '../pages/user_assign_page.dart';

class ItemCardWithUser extends StatefulWidget {
  final WarikanDataNotifer warikanDataNotifer;
  final int index;

  const ItemCardWithUser({required this.warikanDataNotifer, required this.index, super.key});

  @override
  ItemCardWithUserState createState() => ItemCardWithUserState();
}

class ItemCardWithUserState extends State<ItemCardWithUser> {

  @override
  Widget build(BuildContext context) {
    print(widget.warikanDataNotifer.getItemList[widget.index].payUser.length);
    return InkWell(
      child: SizedBox(
        width: 330,
        child: Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.warikanDataNotifer.getItemList[widget.index].itemName,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(width: 10,),
                Text(
                  widget.warikanDataNotifer.getItemList[widget.index].price.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            subtitle: Text(
              widget.warikanDataNotifer.getItemList[widget.index].payUser.join(),
            ),
          )
        ),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserAssignPage(
              warikanDataNotifer: widget.warikanDataNotifer,
              index: widget.index,
            )
          )
        ),
      },
    );
  }
}
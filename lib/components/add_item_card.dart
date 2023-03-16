import 'package:flutter/material.dart';
import '../data/item_data.dart';
import '../data/user_data.dart';
import '../data/warikan_data.dart';
import 'shortButton.dart';

class AddItemCard extends StatefulWidget {
  WarikanDataNotifer warikanDataNotifer;

  AddItemCard({required this.warikanDataNotifer, super.key});

  @override
  _AddItemCard createState() => _AddItemCard();
}

class _AddItemCard extends State<AddItemCard> {
  String _itemName = "";
  String _itemPrice = "";

  // オーバーレイの処理
  void _showBottom() async {
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "品名",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.start,
                ),
                TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) => { _itemName = value },
                ),
                Text(
                  "値段",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) => { _itemPrice = value },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShortButton(
                      color: const Color.fromARGB(255, 255, 198, 204),
                      label: "取り消し",
                      onPressed: () { Navigator.pop(context);}
                    ),
                    const SizedBox(width: 50),
                    ShortButton(
                      color: const Color.fromARGB(255, 123, 255, 128),
                      label: "決定",
                      onPressed: () {
                        widget.warikanDataNotifer.addItem(
                          ItemData(
                            itemName: _itemName,
                            price: int.parse(_itemPrice),
                            payUser: [widget.warikanDataNotifer.getHostUser],
                            id: 0,
                          )
                        );
                        Navigator.pop(context);
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showBottom(),
      child: const SizedBox(
        height: 65,
        width: 330,
        child: Card(
          child: Center(
            child: Icon(Icons.add),
          ) 
        ),
      ),
    );
  }
}
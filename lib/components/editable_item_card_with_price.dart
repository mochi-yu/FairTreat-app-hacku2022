import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../data/export_data.dart';
import 'shortButton.dart';

class EditableItemCardWithPrice extends StatefulWidget {
  final WarikanDataNotifer warikanDataNotifer;
  final int index;

  const EditableItemCardWithPrice({required this.warikanDataNotifer, required this.index, super.key});

  @override
  _EditableItemCardWithPrice createState() => _EditableItemCardWithPrice();
}

class _EditableItemCardWithPrice extends State<EditableItemCardWithPrice> {

  void _showBottom(ItemDataNotifer itemDataNotifer) async {
    ItemData _item = itemDataNotifer.getItemData;
    String _newItemName = _item.itemName;
    String _newPrice = _item.price.toString();
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
                  controller: TextEditingController(text: _item.itemName),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) { _newItemName = value; },
                ),
                Text(
                  "値段",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: TextEditingController(text: _item.price.toString()),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) { _newPrice = value; },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShortButton(
                      color: const Color.fromARGB(255, 255, 198, 204),
                      label: "削除",
                      onPressed: () {
                        widget.warikanDataNotifer.clearItem(_item);
                        Navigator.pop(context);
                      }
                    ),

                    const SizedBox(width: 50),

                    ShortButton(
                      color: const Color.fromARGB(255, 123, 255, 128),
                      label: "決定",
                      onPressed: () {
                        itemDataNotifer.updateItemData(newItemName: _newItemName, newPrice: int.parse(_newPrice));
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
    final itemData = widget.warikanDataNotifer.getItemList[widget.index]; 
    return ChangeNotifierProvider(
      create: (BuildContext context) => ItemDataNotifer(itemData),
      child: Consumer<ItemDataNotifer>(
        builder: (context, itemDataNotifer, _) {
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
                            itemData.itemName,
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        itemData.price.toString(),
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                )
              ),
            ),
            onTap: () => _showBottom(itemDataNotifer),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'largeButton.dart';
import 'shortButton.dart';

class EditableItemCardWithPrice extends StatefulWidget {
  final String label;
  final String price;

  const EditableItemCardWithPrice({required this.label, required this.price, super.key});

  @override
  _EditableItemCardWithPrice createState() => _EditableItemCardWithPrice();
}

class _EditableItemCardWithPrice extends State<EditableItemCardWithPrice> {

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
                  controller: TextEditingController(text: widget.label),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
                Text(
                  "値段",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextField(
                  controller: TextEditingController(text: widget.price),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder()
                  ),
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
    );
  }

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
          )
        ),
      ),
      onTap: () => _showBottom(),
    );
  }
}
import 'package:flutter/material.dart';

class ItemCardWithPrice extends StatefulWidget {
  final String label;
  final String price;

  const ItemCardWithPrice({required this.label, required this.price, super.key});

  @override
  _ItemCardWithPrice createState() => _ItemCardWithPrice();
}

class _ItemCardWithPrice extends State<ItemCardWithPrice> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
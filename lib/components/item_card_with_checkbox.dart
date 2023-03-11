import 'package:flutter/material.dart';

class ItemCardWithCheckbox extends StatefulWidget {
  final String label;

  const ItemCardWithCheckbox({required this.label, super.key});

  @override
  _ItemCardWithCheckbox createState() => _ItemCardWithCheckbox();
}

class _ItemCardWithCheckbox extends State<ItemCardWithCheckbox> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: 330,
        child: Card(
          child: ListTile(
            leading: Checkbox(
              value: _flag,
              onChanged: _handleCheckbox,
            ),
            title: Text(widget.label),
          ),
        ),
      ),
      onTap: () => _handleCheckbox(!_flag),
    );
  }
}
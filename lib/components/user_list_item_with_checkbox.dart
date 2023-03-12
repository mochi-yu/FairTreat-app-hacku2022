import 'package:flutter/material.dart';

class UserListItemWithCheckbox extends StatefulWidget {
  final String label;

  const UserListItemWithCheckbox({required this.label, super.key});

  @override
  _UserListItemWithCheckbox createState() => _UserListItemWithCheckbox();
}

class _UserListItemWithCheckbox extends State<UserListItemWithCheckbox> {
  bool _flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      _flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: InkWell(
        child: ListTile(
          leading: Checkbox(
            value: _flag,
            onChanged: _handleCheckbox,
          ),
          title: Text(
            widget.label,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        onTap: () => _handleCheckbox(!_flag),
      ),
    );
  }
}
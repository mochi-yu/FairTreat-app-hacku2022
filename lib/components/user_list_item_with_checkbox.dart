import 'package:flutter/material.dart';

class UserListItemWithCheckbox extends StatefulWidget {
  final String label;

  const UserListItemWithCheckbox({required this.label, super.key});

  @override
  UserListItemWithCheckboxState createState() => UserListItemWithCheckboxState();
}

class UserListItemWithCheckboxState extends State<UserListItemWithCheckbox> {
  bool flag = false;

  void _handleCheckbox(bool? e) {
    setState(() {
      flag = e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: InkWell(
        child: ListTile(
          leading: Checkbox(
            value: flag,
            onChanged: _handleCheckbox,
          ),
          title: Text(
            widget.label,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        onTap: () => _handleCheckbox(!flag),
      ),
    );
  }
}
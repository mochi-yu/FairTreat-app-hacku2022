import 'package:flutter/material.dart';

class UserListItemWithCheckbox extends StatefulWidget {
  final String label;
  final bool argFlag;

  const UserListItemWithCheckbox({required this.label, super.key, required this.argFlag});

  @override
  UserListItemWithCheckboxState createState() => UserListItemWithCheckboxState();
}

class UserListItemWithCheckboxState extends State<UserListItemWithCheckbox> {
  late bool flag = super.widget.argFlag;

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
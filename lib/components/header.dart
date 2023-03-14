 import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[900],
      centerTitle: true,
      title: Text(
          "割り勘アプリ",
          style: Theme.of(context).textTheme.titleLarge
        )
    );
  }
}
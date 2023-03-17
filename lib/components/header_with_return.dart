 import 'package:flutter/material.dart';

class HeaderWithReturn extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWithReturn({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[900],
      title: Center(
        child: Text(
          "FairTreat",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () { print("return."); },
      ),
    );
  }
}
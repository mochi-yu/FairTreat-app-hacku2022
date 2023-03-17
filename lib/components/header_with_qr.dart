 import 'package:flutter/material.dart';

class HeaderWithQr extends StatelessWidget implements PreferredSizeWidget {
  late String id;
  HeaderWithQr({super.key, required this.id});

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
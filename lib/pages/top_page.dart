/// Top Page

import 'package:flutter/material.dart';
import './input_name_page.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '割り勘\nアプリ',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 80,),
              Text(
                'タップして新しくはじめる',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).pushReplacementNamed('/inputNamePage');
        },
      ),
    );
  }
}
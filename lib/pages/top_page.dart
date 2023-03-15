/// Top Page
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("show top page.");
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fair Treat',
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
          Navigator.of(context).pushNamed('/inputNamePage');
        },
      ),
    );
  }
}
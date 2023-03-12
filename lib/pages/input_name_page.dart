// Input name page
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/largeButton.dart';

class InputNamePage extends StatelessWidget {
  const InputNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Text(
              '表示名を入力してください',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "表示名"
                ),
                onChanged: (value) { print(value); },
              ),
            ),
            LargeButton(
              label: "これでOK",
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/selectOperationPage');
              }
            ),
          ],
        ),
      ),
    );
  }
}
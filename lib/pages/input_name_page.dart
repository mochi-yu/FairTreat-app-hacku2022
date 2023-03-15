// Input name page
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/largeButton.dart';
import '../data/user_data.dart';

class InputNamePage extends StatelessWidget {
  UserData myself = UserData(userName: "", isHost: true);
  InputNamePage({super.key});

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
                onChanged: (value) { myself.userName = value; },
              ),
            ),
            LargeButton(
              label: "これでOK",
              onPressed: () {
                Navigator.of(context).pushNamed('/selectOperationPage', arguments: myself);
              }
            ),
          ],
        ),
      ),
    );
  }
}
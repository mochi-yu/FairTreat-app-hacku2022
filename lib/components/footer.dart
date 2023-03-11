import 'package:flutter/material.dart';
import './largeButton.dart';

class Footer extends StatelessWidget {
  final String label;
  final GestureTapCallback onPressed;

  const Footer({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      color: Colors.green[50],
      child: LargeButton(label: label, onPressed: onPressed),
    );
  }
}
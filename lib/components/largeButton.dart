import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPressed;

  const LargeButton({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 123, 255, 128),
          shape: const StadiumBorder()
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
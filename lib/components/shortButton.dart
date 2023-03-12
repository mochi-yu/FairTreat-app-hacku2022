import 'package:flutter/material.dart';

class ShortButton extends StatelessWidget {
  final String label;
  final Color color;
  final GestureTapCallback onPressed;

  const ShortButton({required this.color,required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
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
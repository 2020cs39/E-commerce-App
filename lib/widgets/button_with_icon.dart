import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final String text;
  const ButtonWithIcon(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}

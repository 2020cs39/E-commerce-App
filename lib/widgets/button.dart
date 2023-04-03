import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final Icon icon;

  const MyButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: onTap,
        icon: icon,
        label: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(buttonText),
        ),
      ),
    );
  }
}

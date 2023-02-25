import 'package:flutter/cupertino.dart';

class PageHeading extends StatelessWidget {
  final String text;
  const PageHeading(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 22, 18, 22),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

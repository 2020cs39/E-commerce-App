import 'package:flutter/material.dart';
import '../util/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SafeArea(
      child: Center(
        child: Text('Flutter Demo Home Page'),
      ),
    );
  }
}

import 'package:ecommerce_app/screens/buyer/itemdetail/detail.dart';
import 'package:flutter/material.dart';
import '../util/responsive.dart';
import '../util/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: eLightWhite,
      body: SafeArea(
        child: ItemDetail(),
      ),
    );
  }
}

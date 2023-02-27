import 'package:ecommerce_app/screens/buyer/itemdetail/detail.dart';

import 'package:ecommerce_app/screens/buyer/sign_up.dart';
import 'package:ecommerce_app/screens/seller/sign_up.dart';
import 'package:flutter/material.dart';
import '../util/responsive.dart';
import '../util/app_style.dart';
import 'seller/sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: eLightWhite,
      body: SafeArea(
        child: SignInSeller(),
      ),
    );
  }
}

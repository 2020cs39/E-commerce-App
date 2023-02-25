import 'package:ecommerce_app/screens/buyer/signUpScreen.dart';
import 'package:flutter/material.dart';
import '/util/responsive.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SafeArea(
      child: SignUpScreen(),
      
      

    );
  }
}
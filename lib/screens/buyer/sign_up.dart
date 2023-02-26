import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:flutter/material.dart';


import '../../util/responsive.dart';

class SignUpBuyer extends StatelessWidget {
  const SignUpBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController fullName = TextEditingController();
    return Column(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
        SizedBox(height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign Up"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: fullName, labelHint: "Full name"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: username, labelHint: "Email"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: password, labelHint: "Password"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign Up",
          onTap: () {
          },
        )
      ],
    );
  }
}

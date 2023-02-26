import 'package:flutter/material.dart';


import '../../util/responsive.dart';
import '../../widgets/button.dart';
import '../../widgets/input_field.dart';
import '../../widgets/page_header.dart';

class SignInBuyer extends StatelessWidget {
  const SignInBuyer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Column(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
        SizedBox(height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign In"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: username, labelHint: "Email"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: password, labelHint: "Password"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign in",
          onTap: () {
          },
        )
      ],
    );
  }
}
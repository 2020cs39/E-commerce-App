import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class SignUpBuyer extends StatelessWidget {
  SignUpBuyer({super.key});
  final CollectionReference _buyers =
      FirebaseFirestore.instance.collection('buyers');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController fullName = TextEditingController();
    return ListView(
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
          onTap: () async {
            final String fname = fullName.text;
            final String uname = username.text;
            final String pin = password.text;

            if (uname != null && pin != null && fname != null) {
              await _buyers.add(
                  {'full name': fname, 'username': uname, 'password': pin});
              username.text = '';
              password.text = '';
              fullName.text = '';
            }
          },
        )
      ],
    );
  }
}

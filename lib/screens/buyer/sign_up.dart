import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/screens/buyer/sign_in.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    TextEditingController phone = TextEditingController();
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
        SizedBox(height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign Up"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(
          controller: fullName,
          labelHint: "Full name",
          icon: const Icon(Icons.person_outline_outlined),
        ),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 2,
        ),
        InputField(
            controller: username,
            labelHint: "Email",
            icon: const Icon(Icons.person)),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(
            controller: password,
            labelHint: "Password",
            icon: const Icon(Icons.password)),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        InputField(
            controller: phone,
            labelHint: "Phone",
            icon: const Icon(Icons.phone)),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign Up",
          onTap: () async {
            final String fname = fullName.text;
            final String uname = username.text;
            final String pin = password.text;
            final String call = phone.text;

            if (uname != null && pin != null && fname != null && call != null) {
              mailRegister(uname, pin);
              username.text = '';
              password.text = '';
              fullName.text = '';
              phone.text = '';
            }
          },
        ),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
            buttonText: "Already have account? Sign in",
            onTap: (() => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SignInBuyer())))),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3)
      ],
    ));
  }
}

Future<String?> mailRegister(String mail, String pwd) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: mail, password: pwd);
    return null;
  } on FirebaseAuthException catch (ex) {
    return "${ex.code}: ${ex.message}";
  }
}

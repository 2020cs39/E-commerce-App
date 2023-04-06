import 'package:ecommerce_app/screens/buyer/sign_up.dart';
import 'package:ecommerce_app/screens/home_page_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
        SizedBox(height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign In"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(
          controller: username,
          labelHint: "Email",
          icon: const Icon(Icons.person),
        ),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(
          controller: password,
          labelHint: "Password",
          icon: const Icon(Icons.password_sharp),
        ),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign in",
          icon: const Icon(Icons.login),
          onTap: () {
            Future<User?> user = signInUsingEmailPassword(
                email: username.text,
                password: password.text,
                context: context);
            print("user");
            print(user);
            if (user != null) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('Wrong credentials. Try again'),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Ok'))
                        ],
                      ));
            } else {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const HomePage()));
            }
          },
        ),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
            buttonText: "Don't have account? Sign up",
            onTap: (() => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SignUpBuyer()))), icon:const Icon(Icons.person),),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3)
      ],
    ));
  }
}

Future<User?> signInUsingEmailPassword({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    user = userCredential.user;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided.');
    } else {
      print(e.message);
    }
  }

  return user;
}

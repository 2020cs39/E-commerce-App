import 'package:ecommerce_app/screens/buyer/itemdetail/detail.dart';
import 'package:ecommerce_app/screens/buyer/sign_up.dart';
import 'package:ecommerce_app/screens/seller/sign_in.dart';
import 'package:ecommerce_app/screens/seller/sign_up.dart';
import 'package:ecommerce_app/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SignUpBuyer(),
        // body: ItemDetail(),
        backgroundColor: eLighterGrey,
      ),
    );
  }
}

// import 'package:ecommerce_app/screens/seller/add_product.dart';
import 'package:ecommerce_app/screens/home_page_screen.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: eLighterGrey,
        body: HomePage(),
      ),
    );
  }
}

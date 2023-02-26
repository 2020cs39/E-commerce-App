import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:flutter/material.dart';

import '../../util/responsive.dart';

class SignUpSeller extends StatelessWidget {
  SignUpSeller({super.key});
  final CollectionReference _sellers =
      FirebaseFirestore.instance.collection('sellers');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController fullName = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController cnicNumber = TextEditingController();
    TextEditingController city = TextEditingController();
    TextEditingController address = TextEditingController();

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
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: phone, labelHint: "Phone no."),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: cnicNumber, labelHint: "CNIC"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: address, labelHint: "Address"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: city, labelHint: "City"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign Up",
          onTap: () async {
            final String fname = fullName.text;
            final String uname = username.text;
            final String pin = password.text;
            final String phoneno = phone.text;
            final String cnic = cnicNumber.text;
            final String adress = address.text;
            final String citi = city.text;

            if (uname != null &&
                pin != null &&
                fname != null &&
                phoneno != null &&
                cnic != null &&
                adress != null &&
                citi != null) {
              await _sellers.add({
                'full name': fname,
                'username': uname,
                'password': pin,
                'phone': phoneno,
                'cnic': cnic,
                'address': adress,
                'city': citi
              });
              username.text = '';
              password.text = '';
              fullName.text = '';
              phone.text = '';
              cnicNumber.text = '';
              address.text = '';
              city.text = '';
            }
          },
        ),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3)
      ],
    );
  }
}

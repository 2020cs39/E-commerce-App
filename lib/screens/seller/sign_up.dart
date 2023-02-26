import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/page_header.dart';
import 'package:flutter/material.dart';


import '../../util/responsive.dart';

class SignUpSeller extends StatelessWidget {
  const SignUpSeller({super.key});

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

    return Expanded(
      child:Column(
        
        children:<Widget> [

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
          onTap: () {
          },
        )
      
        ],
      )
      )
      
    ;
  }
}

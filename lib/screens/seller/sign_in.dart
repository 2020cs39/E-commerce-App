import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../util/responsive.dart';
import '../../widgets/button.dart';
import '../../widgets/input_field.dart';
import '../../widgets/page_header.dart';

class SignInSeller extends StatelessWidget {
  SignInSeller({super.key});
  final CollectionReference _sellers =
      FirebaseFirestore.instance.collection('sellers');

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return ListView(
      children: <Widget>[
        Image.asset('assets/images/logo.jpg'),
        SizedBox(height: SizeConfig.verticalBlockSize! * 1.5),
        const PageHeading("Sign In"),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: username, labelHint: "Email",icon:const Icon(Icons.person)),
        SizedBox(height: SizeConfig.verticalBlockSize! * 2),
        InputField(controller: password, labelHint: "Password",icon:const Icon(Icons.password)),
        SizedBox(height: SizeConfig.verticalBlockSize! * 3),
        MyButton(
          buttonText: "Sign in",
          onTap: () async{
            StreamBuilder(
              stream: _sellers.snapshots(),
              builder: ((context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasData) {
                  ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data!.docs[index];
                      return Card(
                        child: ListTile(
                          title: Text(documentSnapshot['full name']),
                        ),
                      );
                    },
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            );
          },
        )
      ],
    );
  }
}

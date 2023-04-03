import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/util/responsive.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/button.dart';

class _AddProductState extends State<AddProduct> {
  TextEditingController productName = TextEditingController();
  TextEditingController productQuantity = TextEditingController();
  TextEditingController productBuyPrice = TextEditingController();
  TextEditingController productSellPrice = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  String buttonText = 'Upload Image';
  String imageUrl = '';
  String localImagePath = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            const Text(
              'Add Product',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            InputField(
              controller: productName,
              labelHint: 'Name',
              icon: const Icon(Icons.add),
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            InputField(
              controller: productQuantity,
              labelHint: 'Quantity',
              icon: const Icon(Icons.production_quantity_limits),
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            InputField(
              controller: productBuyPrice,
              labelHint: 'BuyPrice',
              icon: const Icon(Icons.price_check),
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            InputField(
              controller: productSellPrice,
              labelHint: 'SellPrice',
              icon: const Icon(Icons.price_check),
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            InputField(
              controller: productDescription,
              labelHint: 'Description',
              icon: const Icon(Icons.description),
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            localImagePath != ""
                ? InkWell(
                    onTap: () {
                      setState(() {
                        localImagePath = "";
                      });
                    },
                    child: Image.file(
                      File(localImagePath),
                      width: 150,
                      height: 150,
                    ),
                  )
                : Container(),
            MyButton(
              buttonText: buttonText,
              icon: const Icon(Icons.add_a_photo_sharp),
              onTap: () async {
                var image =
                    await ImagePicker().pickImage(source: ImageSource.gallery);

                if (image != null) {
                  setState(() {
                    buttonText = 'Image Uploaded';
                    localImagePath = image.path;
                  });
                }
                String uniqueImageName =
                    DateTime.now().millisecondsSinceEpoch.toString();
                Reference referenceRoot = FirebaseStorage.instance.ref();
                Reference referenceDirectoryImage =
                    referenceRoot.child('images');
                Reference referenceFileImage =
                    referenceDirectoryImage.child(uniqueImageName);
                try {
                  await referenceFileImage.putFile(File(image!.path));
                  imageUrl = await referenceFileImage.getDownloadURL();
                } catch (e) {
                  //print(e.toString());
                }
              },
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            MyButton(
                buttonText: "Add Product",
                icon: const Icon(Icons.add),
                onTap: () {
                  if (imageUrl.isNotEmpty) {
                    FirebaseFirestore.instance
                        .collection('sellerproducts')
                        .add({
                      'Name': productName.text,
                      'Quantity': productQuantity.text,
                      'BuyPrice': productBuyPrice.text,
                      'SellPrice': productSellPrice.text,
                      'Description': productDescription.text,
                      'ImageUrl': imageUrl,
                    });
                    productName.clear();
                    productQuantity.clear();
                    productBuyPrice.clear();
                    productSellPrice.clear();
                    productDescription.clear();
                    imageUrl = '';
                    buttonText = 'Upload Image';
                  }
                  if (imageUrl.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please Upload Image'),
                      ),
                    );
                  }
                }),
          ],
        ),
      ),
    ));
  }
}

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  _AddProductState createState() => _AddProductState();
}

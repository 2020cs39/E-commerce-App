import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/util/responsive.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/widgets/input_field.dart';
import 'package:ecommerce_app/widgets/button.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController productName = TextEditingController();
  TextEditingController productQuantity = TextEditingController();
  TextEditingController productBuyPrice = TextEditingController();
  TextEditingController productSellPrice = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  String imageUrl = '';
  String localImagePath = '';

  void pickImage() async {}

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: SizeConfig.verticalBlockSize! * 3),
            const Text(
              'Add Product',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 2),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          File(localImagePath),
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      onTap: () async {
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            localImagePath = image.path;
                          });
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.image,
                              color: Colors.grey,
                              size: 50,
                            ),
                            Text(
                              "Upload Image",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            SizedBox(height: SizeConfig.verticalBlockSize! * 1),
            MyButton(
                buttonText: "Add Product",
                icon: const Icon(Icons.add),
                onTap: () async {
                  String uniqueImageName =
                      DateTime.now().millisecondsSinceEpoch.toString();
                  Reference referenceRoot = FirebaseStorage.instance.ref();
                  Reference referenceDirectoryImage =
                      referenceRoot.child('images');
                  Reference referenceFileImage =
                      referenceDirectoryImage.child(uniqueImageName);
                  try {
                    File convertedImagePath =
                        await File(localImagePath).create();
                    await referenceFileImage.putFile(convertedImagePath);
                    imageUrl = await referenceFileImage.getDownloadURL();
                  } catch (e) {
                    log(e.toString());
                  }

                  if (imageUrl != '') {
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
                    localImagePath = '';
                  } else {
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

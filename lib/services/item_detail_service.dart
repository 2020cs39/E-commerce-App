import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:ecommerce_app/model/model.dart';

// Reference for product
CollectionReference _productRef =
    FirebaseFirestore.instance.collection('sellerproducts');
// Reference for seller
CollectionReference _sellerRef =
    FirebaseFirestore.instance.collection('sellers');

// This will return product data
Future<Product> getProductData(String id) async {
  // Get docs from collection reference
  DocumentSnapshot documentSnapshot = await _productRef.doc(id).get();
  final bPrice = documentSnapshot['BuyPrice'];
  final desc = documentSnapshot['Description'];
  final imgUrl = documentSnapshot['ImageUrl'];
  final name = documentSnapshot['Name'];
  final qty = documentSnapshot['Quantity'];
  final sPrice = documentSnapshot['SellPrice'];
  Product data = Product(
      id: id,
      buyPrice: bPrice,
      description: desc,
      imageUrl: imgUrl,
      name: name,
      quantity: qty,
      sellPrice: sPrice);
  return data;
}

// This will return seller data
Future<Seller> getSellerData(String id) async {
  // Get docs from collection reference
  DocumentSnapshot documentSnapshot = await _sellerRef.doc(id).get();
  final adres = documentSnapshot['address'];
  final city = documentSnapshot['city'];
  final cnicNo = documentSnapshot['cnic'];
  final fName = documentSnapshot['full name'];
  final pin = documentSnapshot['password'];
  final phoneNo = documentSnapshot['phone'];
  final uName = documentSnapshot['username'];
  Seller data = Seller(
      address: adres,
      city: city,
      cnic: cnicNo,
      fullName: fName,
      password: pin,
      phone: phoneNo,
      userName: uName);
  return data;
}

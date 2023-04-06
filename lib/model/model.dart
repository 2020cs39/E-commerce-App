// Model for product
class Product {
  final String id;
  final String buyPrice;
  final String description;
  final String imageUrl;
  final String name;
  final String quantity;
  final String sellPrice;

  const Product({
    required this.id,
    required this.buyPrice,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.quantity,
    required this.sellPrice,
  });
}

// Model for seller
class Seller {
  final String address;
  final String city;
  final String cnic;
  final String fullName;
  final String password;
  final String phone;
  final String userName;

  const Seller({
    required this.address,
    required this.city,
    required this.cnic,
    required this.fullName,
    required this.password,
    required this.phone,
    required this.userName,
  });
}

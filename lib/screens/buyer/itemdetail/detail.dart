import 'package:ecommerce_app/model/model.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/description_in_detail.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/description_price_rating_question.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/trader_sheet.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/service_sheet.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/spec_delivery_service.dart';
import 'package:ecommerce_app/services/item_detail_service.dart';
import 'package:flutter/material.dart';
import '../../../util/responsive.dart';
import 'delivery_sheet.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  void initState() {
    super.initState();
    convertFutureIntoProduct(getProductData('4nPrFCfhoISvWyQXgbP6'));
  }

  // Product variable variables and functions start here
  //////////////////////////////////////////////////////
  late Product prdData;
  String itemId = '';
  String itemName = '';
  String itemDesc = '';
  String itemDiscountedPrice = '';
  String itemTotalPrice = '';
  String itemDiscount = '';
  String itemQuestion = '';
  String imageUlr = '';
  void convertFutureIntoProduct(Future<Product> future) async {
    prdData = await future;
    setState(() {
      itemId = prdData.id;
      imageUlr = prdData.imageUrl;
      itemName = prdData.name;
      itemDesc = prdData.description;
      itemTotalPrice = prdData.sellPrice;
      itemDiscount = '8';
      itemDiscountedPrice = (int.parse(itemTotalPrice) -
              (int.parse(itemTotalPrice) * int.parse(itemDiscount) / 100))
          .toString();
      itemQuestion = 'Ask any question about $itemName';
    });
    futureIntoSeller(getSellerData('biUEmsfSfRl5XOODdDiJ'));
    // print(prdData.imageUrl);
  }
  // Product variable variables and functions ends here
  /////////////////////////////////////////////////////

  // Seller variables and function start form here
  //////////////////////////////////////////////
  late Seller sellerData;
  String traderId = '';
  String traderName = '';
  void futureIntoSeller(Future<Seller> future) async {
    sellerData = await future;
    setState(() {
      traderName = sellerData.fullName;
    });
  }
  // Seller variables and function ends form here
  //////////////////////////////////////////////

  String itemRating = '4.5';
  static String itemRatingGiveBy = '18';
  static String itemSold = '456';

  static String itemBrandName = 'Rado';
  static String itemDeliveryTime = '20';
  static String itemDeliveryPrice = '119';
  static String itemShipFrom = 'Lahore';
  static String itemReturnTime = '14';
  static String itemWarranty = 'Warranty not available';
  static String detailDescription =
      'A clock is a machine in which a device that performs regular movements in equal intervals of time is linked to a counting mechanism that records the number of movements. All clocks, of whatever form, are made on this principle.';
  static List detailDescriptionList = [
    'd d',
    'd d ',
    'r e',
    'd d',
    'd d ',
    'r e' 'd d',
    'd d ',
    'r e'
  ];

  void clickItemQuestion(String id) {
    print('click on id  d d d$id');
  }

  Widget clickTrader(String id) {
    return TraderSheet(trader: traderName, traderId: traderId);
  }

  Widget clickDelivery(String id) {
    return const DeliverySheet();
  }

  Widget clickService(String id) {
    return const ServiceSheet();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 0,
        ),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 34,
          child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/e-commerce-b621a.appspot.com/o/images%2F1677519313323?alt=media&token=3c1687f9-3037-44bc-9520-879f3741e7ab',
              fit: BoxFit.cover),
        ),
        const SizedBox(
          height: 10,
        ),
        DescriptionPriceRatingQuestion(
          id: itemId,
          description: itemDesc,
          discountedPrice: itemDiscountedPrice,
          totalPrice: itemTotalPrice,
          discount: itemDiscount,
          rating: itemRating,
          ratingGivenBy: itemRatingGiveBy,
          sold: itemSold,
          questionText: itemQuestion,
          questionClick: clickItemQuestion,
          traderId: traderId,
          traderName: traderName,
          traderClick: clickTrader,
        ),
        SpecDeliveryService(
          id: itemId,
          brandName: itemBrandName,
          deliveryTime: itemDeliveryTime,
          deliveryPrice: itemDeliveryPrice,
          shipFrom: itemShipFrom,
          deliveryClick: clickDelivery,
          returnTime: itemReturnTime,
          warranty: itemWarranty,
          serviceClick: clickService,
        ),
        const SizedBox(
          height: 10,
        ),
        DescriptionInDetail(
            descriptionText: detailDescription,
            descriptionList: detailDescriptionList),
      ],
    );
  }
}

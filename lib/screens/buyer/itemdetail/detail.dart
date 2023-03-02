import 'package:ecommerce_app/screens/buyer/itemdetail/description_in_detail.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/description_price_rating_question.dart';
import 'package:ecommerce_app/screens/buyer/itemdetail/spec_delivery_service.dart';
import 'package:flutter/material.dart';
import '../../../util/responsive.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});
  static String itemId = '3e3';
  static String itemName = 'Clock';
  static String itemDesc =
      'This is the watch wich have ver easy to see time kf f f f f f f f This is the watch wich have ver easy to s  f f f f ff This is the watch wich have ver easy to s';
  static String itemDiscountedPrice = '1,750';
  static String itemTotalPrice = '2500';
  static String itemDiscount = '30';
  static String itemRating = '4.5';
  static String itemRatingGiveBy = '18';
  static String itemSold = '456';
  static String itemQuestion = 'Ask any question about $itemName';
  static String traderId = 'io';
  static String traderName = 'Rizwana';
  static String itemBrandName = 'Rado';
  static String itemDeliveryTime = '20';
  static String itemDeliveryPrice = '120';
  static String itemShipFrom = 'Lahore';
  static String itemReturnTime = '7';
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

  void clickTrader(String id) {
    print('click on id  d d d$id');
  }

  void clickDelivery(String id) {
    print('click on delivery $id');
  }

  void clickService(String id) {
    print('click on service $id');
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 5,
        ),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 34,
          child: Image.network(
              'https://cdn.pixabay.com/photo/2018/03/13/11/26/clock-3222267_960_720.jpg',
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

import 'package:ecommerce_app/widgets/horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../util/app_style.dart';
import '../../../util/responsive.dart';

class SpecDeliveryService extends StatelessWidget {
  final String id;
  final String deliveryTime;
  final String deliveryPrice;
  final String shipFrom;
  final String warranty;
  final String returnTime;
  final String brandName;
  final Function(String) deliveryClick;
  final Function(String) serviceClick;

  const SpecDeliveryService({
    super.key,
    required this.id,
    required this.brandName,
    required this.deliveryTime,
    required this.deliveryPrice,
    required this.shipFrom,
    required this.deliveryClick,
    required this.returnTime,
    required this.warranty,
    required this.serviceClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.verticalBlockSize! * 1.5),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.verticalBlockSize! * 1.8),
        decoration: BoxDecoration(
            color: eLighterWhite, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 23,
                  child: Text(
                    'Brand',
                    style: eBoldText,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 61,
                  child: Text(
                    brandName,
                    style: eRegular,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            const HorizontalDivider(),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            // Row for delivery brand name and service
            GestureDetector(
              onTap: () {
                deliveryClick(id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.horizontalBlockSize! * 23,
                    child: Text(
                      'Delivery',
                      style: eBoldText,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.horizontalBlockSize! * 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: SizeConfig.horizontalBlockSize! * 37,
                              child: Text(
                                'Standard Delivery $deliveryTime days',
                                style: eRegular,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.horizontalBlockSize! * 20,
                              child: Text(
                                'Rs. $deliveryPrice',
                                style: eRegular,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig.horizontalBlockSize! * 1),
                        Text(
                          'Ship From $shipFrom',
                          style: eRegular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: SizeConfig.horizontalBlockSize! * 3.8,
                      child: Text(
                        '>',
                        style: eRegular,
                      )),
                ],
              ),
            ),

            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            const HorizontalDivider(),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            // Row for service start from here
            GestureDetector(
              onTap: () {
                serviceClick(id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.horizontalBlockSize! * 23,
                    child: Text(
                      'Service',
                      style: eBoldText,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.horizontalBlockSize! * 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$returnTime days easy return',
                          style: eRegular,
                        ),
                        SizedBox(height: SizeConfig.horizontalBlockSize! * 1),
                        Text(
                          warranty,
                          style: eRegular,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.horizontalBlockSize! * 3.8,
                    child: Text(
                      '>',
                      style: eRegular.copyWith(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

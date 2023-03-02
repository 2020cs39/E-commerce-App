import 'package:ecommerce_app/widgets/horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../util/app_style.dart';
import '../../../util/responsive.dart';

class DescriptionPriceRatingQuestion extends StatelessWidget {
  final String id;
  final String description;
  final String totalPrice;
  final String discountedPrice;
  final String discount;
  final String rating;
  final String ratingGivenBy;
  final String sold;
  final String questionText;
  final Function(String) questionClick;
  final String traderId;
  final String traderName;
  final Function(String) traderClick;

  const DescriptionPriceRatingQuestion({
    super.key,
    required this.id,
    required this.description,
    required this.discountedPrice,
    required this.totalPrice,
    required this.discount,
    required this.rating,
    required this.ratingGivenBy,
    required this.sold,
    required this.questionText,
    required this.questionClick,
    required this.traderId,
    required this.traderName,
    required this.traderClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.verticalBlockSize! * 1.5),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.verticalBlockSize! * 1.8),
        decoration: BoxDecoration(
            color: eWhite, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              maxLines: 2,
              style: eRegularText.copyWith(
                  overflow: TextOverflow.ellipsis, fontSize: 14),
            ),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 1,
            ),
            Row(
              children: [
                Text(
                  'Rs.',
                  style: eBoldText.copyWith(fontSize: 14),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 2,
                ),
                Text(
                  discountedPrice,
                  style: eBoldText.copyWith(fontSize: 16),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 2.5,
                ),
                Text(
                  'Rs. $totalPrice',
                  style: eRegularText.copyWith(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 1.5,
                ),
                Text(
                  '-$discount%',
                  style: eRegularText.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: SizeConfig.verticalBlockSize! * 1.5,
            // ),
            const HorizontalDivider(),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 0.5,
                ),
                Text(
                  '$rating/5($ratingGivenBy)   >  $sold Sold',
                  style: eRegularText.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.verticalBlockSize! * 0.5,
            ),
            const HorizontalDivider(),
            GestureDetector(
              onTap: () {
                questionClick(id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    questionText,
                    style: eRegularText.copyWith(fontSize: 14),
                  ),
                  Text(
                    '>',
                    style: eRegularText.copyWith(fontSize: 25),
                  ),
                ],
              ),
            ),
            const HorizontalDivider(),
            GestureDetector(
              onTap: () {
                traderClick(traderId);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    traderName,
                    style: eRegularText.copyWith(fontSize: 14),
                  ),
                  Text(
                    '>',
                    style: eRegularText.copyWith(fontSize: 25),
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

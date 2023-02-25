import 'package:ecommerce_app/widgets/horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../util/app_style.dart';
import '../../../util/responsive.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.verticalBlockSize! * 1.5),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.verticalBlockSize! * 1.8),
        decoration: BoxDecoration(
            color: eLighterWhite, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text(
              'This is the watch wich have ver easy to see time kf f f f f f f f This is the watch wich have ver easy to s  f f f f ff This is the watch wich have ver easy to s ',
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
                  '1,750',
                  style: eBoldText.copyWith(fontSize: 16),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 2.5,
                ),
                Text(
                  'Rs. 2,500',
                  style: eRegularText.copyWith(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 1.5,
                ),
                Text(
                  '-30%',
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
                  '4.3/5(18)   >  436 Sold',
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
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/widgets/horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../util/responsive.dart';
import '../../../util/app_style.dart';

class DeliverySheet extends StatelessWidget {
  const DeliverySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: eWhite,
      padding: const EdgeInsets.all(20),
      height: SizeConfig.verticalBlockSize! * 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Delivery Options',
              textAlign: TextAlign.center, style: eSemiBold),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 3,
          ),
          Text('Standard Delivery , 29 Mar - 31 Mar    Rs. 119',
              style: eRegular),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 2,
          ),
          const HorizontalDivider(),
          Text('Cash on Delivery Available', style: eRegular),
        ],
      ),
    );
  }
}

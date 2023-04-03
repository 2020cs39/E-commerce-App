import 'package:flutter/material.dart';
import '../../../../../util/responsive.dart';
import '../../../util/app_style.dart';
import '../../../widgets/horizontal_divider.dart';

class ServiceSheet extends StatelessWidget {
  const ServiceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: eWhite,
      height: SizeConfig.verticalBlockSize! * 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Service', textAlign: TextAlign.center, style: eSemiBold),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 3,
          ),
          Text('100% Authentic', style: eRegular),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 2,
          ),
          const HorizontalDivider(),
          Text('14 days return policy', style: eRegular),
          Text('Change of mind is not applicable',
              style: eRegular.copyWith(fontSize: 12, color: eGrey)),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 2,
          ),
          const HorizontalDivider(),
          Text('Warranty not available', style: eRegular),
        ],
      ),
    );
  }
}

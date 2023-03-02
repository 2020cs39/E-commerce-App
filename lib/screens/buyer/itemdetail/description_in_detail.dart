import 'package:ecommerce_app/util/app_style.dart';
import 'package:ecommerce_app/widgets/bullet_list.dart';
import 'package:ecommerce_app/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import '../../../util/responsive.dart';

class DescriptionInDetail extends StatelessWidget {
  final String descriptionText;
  final List descriptionList;
  const DescriptionInDetail(
      {super.key,
      required this.descriptionText,
      required this.descriptionList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeConfig.verticalBlockSize! * 1.8),
      color: eWhite,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 0.5,
        ),
        Text(
          'Description',
          style: eBoldText,
        ),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 1.5,
        ),
        Paragraph(text: descriptionText),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 1.5,
        ),
        BulletList(dataList: descriptionList),
      ]),
    );
  }
}

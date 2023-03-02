import 'package:ecommerce_app/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';

class BulletList extends StatelessWidget {
  final List dataList;
  const BulletList({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return BulletedList(
        crossAxisAlignment: CrossAxisAlignment.start,
        style: eRegular,
        listItems: dataList,
        bulletColor: eGrey);
  }
}

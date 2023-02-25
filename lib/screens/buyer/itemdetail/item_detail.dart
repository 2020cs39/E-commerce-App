import 'package:ecommerce_app/screens/buyer/itemdetail/description.dart';
import 'package:flutter/material.dart';
import '../../../util/responsive.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 5,
        ),
        Container(
          height: SizeConfig.verticalBlockSize! * 34,
          child: Image.network(
              'https://cdn.pixabay.com/photo/2018/03/13/11/26/clock-3222267_960_720.jpg'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Description(),
      ],
    );
  }
}

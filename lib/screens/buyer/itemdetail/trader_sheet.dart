import 'package:flutter/material.dart';
import '../../../../../util/responsive.dart';
import '../../../util/app_style.dart';
import '../../../widgets/button_with_icon.dart';

class TraderSheet extends StatelessWidget {
  final String trader;
  final traderId;
  const TraderSheet({super.key, required this.trader, required this.traderId});
  void clickTraderButton() {
    print('click on id');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: eWhite,
      height: SizeConfig.verticalBlockSize! * 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(trader, textAlign: TextAlign.center, style: eSemiBold),
          SizedBox(
            height: SizeConfig.verticalBlockSize! * 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 28,
                  child: Column(
                    children: [
                      Text(
                        '84%',
                        style: eSemiBold.copyWith(fontSize: 18),
                      ),
                      Text('Positive Seller Rating',
                          textAlign: TextAlign.center,
                          style: eRegular.copyWith(
                            fontSize: 12,
                            color: eGrey,
                          )),
                    ],
                  )),
              SizedBox(
                width: SizeConfig.horizontalBlockSize! * 6,
              ),
              SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 20,
                  child: Column(
                    children: [
                      Text(
                        '60%',
                        style: eSemiBold.copyWith(fontSize: 18),
                      ),
                      Text('Ship on Time',
                          textAlign: TextAlign.center,
                          style: eRegular.copyWith(
                            fontSize: 12,
                            color: eGrey,
                          )),
                    ],
                  )),
              SizedBox(
                width: SizeConfig.horizontalBlockSize! * 6,
              ),
              SizedBox(
                  width: SizeConfig.horizontalBlockSize! * 28,
                  child: Column(
                    children: [
                      Text(
                        '91%',
                        style: eSemiBold.copyWith(fontSize: 18),
                      ),
                      Text('Chat Response Rate',
                          textAlign: TextAlign.center,
                          style: eRegular.copyWith(
                            fontSize: 12,
                            color: eGrey,
                          )),
                    ],
                  )),
            ],
          ),
          SizedBox(height: SizeConfig.verticalBlockSize! * 5),
          ButtonWithIcon(
              text: 'Visit Store',
              onTap: clickTraderButton,
              icon: Icons.store_mall_directory)
        ],
      ),
    );
  }
}

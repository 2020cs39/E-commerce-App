import 'package:flutter/material.dart';
import 'package:ecommerce_app/util/app_style.dart';
import 'package:ecommerce_app/widgets/grid_view.dart';

import '../util/responsive.dart';

class JustForYouSection extends StatelessWidget {
  const JustForYouSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? tabController = DefaultTabController.of(context);
    SizeConfig().init(context);
    return Column(
      children: [
        const Text("JUST FOR YOU",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: eOrange)),
        SizedBox(
          height: SizeConfig.verticalBlockSize! * 1,
        ),
        Container(
          child: const TabBar(
              indicatorColor: eOrange,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Text(
                    "ALL",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "MALL",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "FASHION",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "BEAUTY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
        ),
        Expanded(
          child: SizedBox(
            height: SizeConfig.verticalBlockSize! * 50,
            child: const TabBarView(
              children: [
                TwoColumnGridView(),
                TwoColumnGridView(),
                TwoColumnGridView(),
                TwoColumnGridView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:ecommerce_app/widgets/just_for_you.dart';
import '../widgets/carousel.dart';
import '../widgets/categories_listview.dart';
import '../widgets/icon_with_text.dart';
import '../util/app_style.dart';
import '../util/responsive.dart';
import '../util/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    TextEditingController searchController = TextEditingController();
    final ScrollController scrollController = ScrollController();

    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: eWhite,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: eOrange,
            selectedIconTheme: const IconThemeData(color: eOrange),
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.messenger,
                  ),
                  label: "Messages"),
              BottomNavigationBarItem(
                  backgroundColor: eGrey,
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Account"),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizontalBlockSize! * 2,
              vertical: SizeConfig.verticalBlockSize! * 1,
            ),

            // ignore: sized_box_for_whitespace
            child: ListView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const IconWithText(
                        icon: Icons.qr_code_scanner_outlined, text: "Scan"),
                    SizedBox(
                      width: SizeConfig.horizontalBlockSize! * 60,
                      height: SizeConfig.verticalBlockSize! * 5,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        controller: searchController,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.only(
                              bottom: 0,
                            )),
                      ),
                    ),
                    Row(
                      children: [
                        const IconWithText(
                            icon: Icons.circle_outlined, text: "Coins"),
                        SizedBox(
                          width: SizeConfig.horizontalBlockSize! * 3,
                        ),
                        const IconWithText(
                            icon: Icons.wallet_outlined, text: "Wallet"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.verticalBlockSize! * 2,
                ),
                const Carousel(),
                SizedBox(
                  height: SizeConfig.verticalBlockSize! * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: shortImages
                      .map((image) => InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(image["src"]),
                                ),
                                SizedBox(
                                  height: SizeConfig.verticalBlockSize! * 1,
                                ),
                                Text(image["title"])
                              ],
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: SizeConfig.verticalBlockSize! * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 15,
                          color: eOrange,
                        ),
                      ),
                    ),
                  ],
                ),
                const CategoriesListView(),
                SizedBox(
                  height: SizeConfig.verticalBlockSize! * 3,
                ),
                const JustForYouSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

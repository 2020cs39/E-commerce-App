import 'package:ecommerce_app/screens/buyer/itemdetail/detail.dart';
import 'package:flutter/material.dart';

import '../util/app_style.dart';
import '../util/data.dart';
import '../util/responsive.dart';

class TwoColumnGridView extends StatefulWidget {
  const TwoColumnGridView({
    Key? key,
  }) : super(key: key);

  @override
  State<TwoColumnGridView> createState() => _TwoColumnGridViewState();
}

class _TwoColumnGridViewState extends State<TwoColumnGridView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: justForYouItems
          .map((item) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemDetail()));
                },
                child: Container(
                  height: 500,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: eGrey, width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.verticalBlockSize! * 13,
                          width: SizeConfig.horizontalBlockSize! * 75,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                item["src"],
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(item["title"],
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star, color: eOrange, size: 20),
                            Text("${item["averageRating"]}/5",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("(${item["totalReviews"]})",
                                style: const TextStyle(
                                  fontSize: 15,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("PKR ${item["price"]}",
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: eOrange)),
                      ],
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

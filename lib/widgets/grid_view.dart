import 'package:ecommerce_app/screens/buyer/itemdetail/detail.dart';
import 'package:flutter/material.dart';

import '../util/app_style.dart';
import '../util/data.dart';

class TwoColumnGridView extends StatelessWidget {
  const TwoColumnGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: justForYouItems
            .map((item) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ItemDetail()));
                  },
                  child: Container(
                    height: 400,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: eGrey, width: 0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 185,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  item["src"],
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Text(item["title"],
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.orange, size: 20),
                              Text("${item["averageRating"]} /5"),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("(${item["totalReviews"]})"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${item["price"]} PKR",
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange)),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

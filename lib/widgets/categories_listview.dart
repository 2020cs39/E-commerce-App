import 'package:flutter/material.dart';

import '../util/app_style.dart';
import '../util/data.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoriesImages.length,
        itemBuilder: (BuildContext context, int index) => Container(
          width: 150,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: eGrey, width: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(categoriesImages[index]["src"])),
              ),
              Text(categoriesImages[index]["title"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

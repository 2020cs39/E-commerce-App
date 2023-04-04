import 'package:ecommerce_app/util/app_style.dart';
import 'package:ecommerce_app/util/responsive.dart';
import 'package:ecommerce_app/widgets/categories_listview.dart';
import 'package:ecommerce_app/widgets/grid_view.dart';
import 'package:flutter/material.dart';
import '../../widgets/just_for_you.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

String quantity = "1";

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: eLighterGrey,
        appBar: AppBar(
          backgroundColor: eLighterGrey,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
          title: const Text(
            'My Cart (1)',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        // write code for add to cart body here
        body: Column(
          children: [
            // write code for show collection name here
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Hurrain Collection > ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/mart.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Mart Product',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'It is very fancy product',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  )),
                              const SizedBox(height: 10),
                              const Text(
                                'Price: \$1000',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Text(
                                      '\$600',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '-60%',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: eLighterGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Center(
                                          child: Icon(Icons.remove)),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        int amount = int.parse(quantity);
                                        if (amount > 1) {
                                          amount--;
                                          quantity = amount.toString();
                                        }
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    quantity,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: eLighterGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child:
                                          const Center(child: Icon(Icons.add)),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        int amount = int.parse(quantity);
                                        amount++;
                                        quantity = amount.toString();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Expanded(child: JustForYouSection()),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Total: \$1000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                    ])),
          ],
        ),
      )),
    );
  }
}

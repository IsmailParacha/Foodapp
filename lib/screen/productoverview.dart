import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/drawerlist.dart';

class productview extends StatefulWidget {
  const productview({Key? key}) : super(key: key);

  @override
  State<productview> createState() => _productviewState();
}

class _productviewState extends State<productview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Row(children: [
        Expanded(
          child: Container(
            height: 40,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.white,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Add to WishList',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 40,
            color: Color.fromARGB(255, 222, 194, 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shop_rounded,
                  color: Colors.white,
                  size: 17,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Goto Cart',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        )
      ]),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 222, 194, 13),
        title: Text(
          "Product Overview",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("assets/basil.png"),
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fresh basil",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rs. 150/50 Gram",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "About This Product",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}

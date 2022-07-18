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
      backgroundColor: Colors.grey[400],
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
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:flutter/src/widgets/framework.dart';

class product extends StatelessWidget {
  final String imagelink;
  final String measure;
  final String name;
  final String prize;
  product(this.imagelink, this.name, this.prize, this.measure);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 230,
          width: 160,
          decoration: BoxDecoration(
              // color: Color(0xffd9dad9),
              color: Colors.white54,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage('$imagelink'),
                    fit: BoxFit.cover,
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$prize",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          width: 60,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$measure",
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Color.fromARGB(255, 222, 194, 13),
                              )
                            ],
                          ),
                        )),

                        //increase product
                        Expanded(
                            child: Container(
                          width: 60,
                          height: 22,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                color: Color.fromARGB(255, 222, 194, 13),
                                size: 15,
                              ),
                              Text(
                                "$measure",
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 222, 194, 13),
                                size: 15,
                              )
                            ],
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}

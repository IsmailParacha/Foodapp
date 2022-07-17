import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 222, 194, 13),
        title: Text(
          "Food app",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              child: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
              radius: 12,
              backgroundColor: Color(0xffd6d382),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
              radius: 12,
              backgroundColor: Color(0xffd6d382),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/wooden-box-full-of-homegrown-produce-picture-id1251268379?b=1&k=20&m=1251268379&s=170667a&w=0&h=i6A24plhYKBE-bg7-How6PUWy9KUnvpOAzElGaQB77U='),
              ),
              borderRadius: BorderRadius.circular(10),
              // color: Colors.red
            ),
            child: Row(children: [
              Expanded(
                  child: Container(
                // color: Colors.red,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              const EdgeInsets.only(right: 120.0, bottom: 10),
                          child: Container(
                            width: 70,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 222, 194, 13),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, top: 8.0),
                              child: Text(
                                "VEGI",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.green.shade900,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30% Off",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  shadows: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        offset: Offset(1, 1))
                                  ]),
                            ),
                            Text(
                              "On all vegitables products",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ]),
              )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Herbs Seasonings",
                  style: TextStyle(color: Colors.black),
                ),
                Text("view all", style: TextStyle(color: Colors.grey[800]))
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 230,
                width: 160,
                decoration: BoxDecoration(
                    // color: Color(0xffd9dad9),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image(image: AssetImage('assets/basil.jpg'))),
                    Expanded(child: Container())
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

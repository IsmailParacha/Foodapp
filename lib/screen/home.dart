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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
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
                                    shadows: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          color: Colors.green.shade900,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          )),
                    ]),
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "30% Off",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        shadows: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3))
                        ]),
                  ),
                  Text("On all vegitables products")
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}

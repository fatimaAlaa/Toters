import 'dart:convert';

import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:http/http.dart';
import 'package:line_icons/line_icons.dart';
import 'package:toters/1_HomePage/MainPage/EarnedPoints.dart';
import 'package:toters/1_HomePage/MainPage/Notification.dart';
import 'package:toters/1_HomePage/MainPage/StoresFilter.dart';
import 'package:toters/1_HomePage/ResturantDetailsPage/1_ResturantPage/Details.dart';

//import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
//import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List listImages = [
    // "images/discount.jpg",
    // "images/backtoSchool.jpg",
    // "images/orderNow.png",
  ];
  bool sizeBool = true;
  bool ShowHide = true;
  int OrdersNumbers = 10;
  DateTime TodayDate = DateTime.now();

  Future getData() async {
    var url = Uri.parse("http://localhost:4000/Offers");
    Response response = await get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    for (int i = 0; i < list1.length; i++) {
      //listImages.add(list1[i]);
    }
  }
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          elevation: 0.5,
          title: InkWell(
            onTap: () {
              setState(() {
                ShowHide = !ShowHide;
              });
            },
            child: Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivering To",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 14,
                          fontFamily: 'Amiri')),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("Home",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Amiri')),
                      const Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotificationPage()));
                    },
                    child: Icon(
                      LineIcons.bell,
                      color: Colors.grey,
                    ))),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Filters()));
                },
                child: Icon(
                  LineIcons.horizontalSliders,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Points(
                                OrdersNumbers: OrdersNumbers,
                                TodayDate: TodayDate,
                              )));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Green",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff10af90),
                                      fontFamily: 'Amiri'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.info_outlined,
                                    color: Color(0xff10af90),
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: const EdgeInsets.all(2)),
                                  ],
                                )),
                            Text(
                              "$OrdersNumbers more orders by ${TodayDate.month}-${TodayDate.day} to reach \n Gold",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "5.2K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Column(
                              children: const [
                                Text("Pts", style: TextStyle(fontSize: 10)),
                                Icon(
                                  Icons.arrow_forward_sharp,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listImages.length,
                    itemBuilder: (context, index) {
                      return Image.network(
                        listImages[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        food("Food", "images/Burger.png"),
                        food("Shops", "images/bag.png"),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    food("Butler", "images/deliviry.png"),
                    food("Add Funds", "images/wallet.png")
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 5,
                  color: Colors.grey.withOpacity(0.1),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Your Favorites",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xff369F3B),
                            size: 15,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Order again from your favorite stores",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Amiri'),
                        ),
                      ),
                      Container(
                          height: 280,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  rest("images/dessert.jpg", "Barhoumi Sweets",
                                      "Dessert", "40 - 50", 5.0),
                                  rest("images/lunch.jpg", "Tabak Al Mandi",
                                      "Yememi, Arabic", "20 - 30", 4.5),
                                  rest("images/milkshake.jpg", "Mood Center",
                                      "Ice Cream, Coffee", "25 - 40", 4.5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          margin: const EdgeInsets.only(
                                              top: 40, right: 10, bottom: 10),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            color: Color(0xff38d33f),
                                            size: 15,
                                          ),
                                        ),
                                        const Text(
                                          "View all (3)",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 5,
                  color: Colors.grey.withOpacity(0.1),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: ShowHide
            ? Container(height: 10)
            : GestureDetector(
                onTap: () {},
                child: Container(
                  height: 260,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: MediaQuery.of(context).size.height)
                      ],
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ShowHide = !ShowHide;
                          });
                        },
                        child: Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                        ),
                      )),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 20),
                        child: Text(
                          "Where should we deliver to?",
                          style: TextStyle(
                              fontFamily: 'Amiri',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.my_location_outlined,
                            color: Color(0xff10af90),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Deliver to my current location",
                            style: TextStyle(fontFamily: 'Amiri'),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Color(0xff10af90),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Deliver somewhere else...",
                            style: TextStyle(fontFamily: 'Amiri'),
                          )
                        ],
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          margin: const EdgeInsets.only(top: 30, bottom: 20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xff10af90),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text("Add New Adrress",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Amiri',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ],
                  ),
                ),
              ));
  }

  Container food(String name, String img) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 2.3,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 70,
            height: 70,
          ),
          Text(
            name,
            style: const TextStyle(fontFamily: 'Amiri'),
          ),
        ],
      ),
    );
  }

  InkWell rest(String img, String name, String ResType, String DeliveryTime,
      double Rate) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Details(
                    ResImg: img,
                    ResName: name,
                    Description: "Enjoy our Special taste",
                    DeliveryTime: DeliveryTime,
                    Rate: Rate,
                    RatingNumbers: 138,
                    CommentName: "Zombie",
                    Comment: "Best taste Everrrrrrrrrrrrrr",
                  )));
        },
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              sizeBool = !sizeBool;
            });
          }
        },
        borderRadius: BorderRadius.circular(10),
        child: AnimatedContainer(
            margin: const EdgeInsets.all(5),
            duration: const Duration(seconds: 1),
            width: 300,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 10),
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(img), fit: BoxFit.cover),
                      ),
                    ),
                    const Positioned(
                      top: 15,
                      right: 15,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Positioned(
                        bottom: -10,
                        right: 15,
                        child: Container(
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.2)),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                DeliveryTime,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Amiri',
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "mins",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'Amiri'),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(name,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Amiri'))),
                Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("\$\$",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Amiri')),
                        Container(
                          margin: const EdgeInsets.all(5),
                          width: 3,
                          height: 3,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),
                        Text(ResType,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Amiri')),
                      ],
                    )),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.only(right: 5),
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.lightBlueAccent,
                            size: 12,
                          ),
                          Text("$Rate",
                              style: const TextStyle(
                                  fontSize: 12, fontFamily: 'Amiri')),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      padding: const EdgeInsets.only(right: 5),
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.blue,
                            size: 10,
                          ),
                          Text(
                            "Earn Points",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontFamily: 'Amiri'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:toters/DetailsPage/Details.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<BannerModel> listBanners = [
    BannerModel(imagePath: "images/discount.jpg", id: '1'),
    BannerModel(imagePath: "images/backtoSchool.jpg", id: '2'),
    BannerModel(imagePath: "images/orderNow.png", id: '3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          elevation: 1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivering To",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 15,
                          fontFamily: 'Amiri')),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Home",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: 'Amiri')),
                      Icon(Icons.arrow_drop_down, color: Colors.black),
                    ],
                  )
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications_none_sharp,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.edit_road_outlined,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
                                padding: EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                    Container(
                                        width: 15,
                                        height: 2,
                                        color: Colors.grey.withOpacity(0.5),
                                        margin: EdgeInsets.all(2)),
                                  ],
                                )),
                            Text(
                              "10 more orders by August 31 to reach \n Gold",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "5.2K",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Column(
                              children: [
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
                  BannerCarousel(
                    banners: listBanners,
                    customizedIndicators: IndicatorModel.animation(
                        width: 20,
                        height: 5,
                        spaceBetween: 2,
                        widthAnimation: 50),
                    height: 200,
                    activeColor: Colors.amber,
                    disableColor: Colors.white,
                    animation: true,
                    borderRadius: 10,
                    initialPage: 2,
                    width: MediaQuery.of(context).size.width,
                    indicatorBottom: false,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
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
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 5,
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                        Padding(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    rest(
                                        "images/dessert.jpg",
                                        "Barhoumi Sweets",
                                        "Dessert",
                                        "40 - 50",
                                        5.0),
                                    rest("images/lunch.jpg", "Tabak Al Mandi",
                                        "Yememi, Arabic", "20 - 30", 4.5),
                                    rest("images/milkshake.jpg", "Mood Center",
                                        "Ice Cream, Coffee", "25 - 40", 4.5),
                                    Padding(
                                      padding: EdgeInsets.only(left: 40),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 70,
                                            margin: EdgeInsets.only(
                                                top: 40, right: 10, bottom: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.grey
                                                    .withOpacity(0.1),
                                                shape: BoxShape.circle),
                                            child: Icon(
                                              Icons.arrow_forward_ios_sharp,
                                              color: Color(0xff38d33f),
                                              size: 15,
                                            ),
                                          ),
                                          Text(
                                            "View all (3)",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
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
              )
            ],
          ),
        ),
        bottomNavigationBar: CircleBottomNavigationBar(
          circleColor: Color(0xff10af90),
          activeIconColor: Colors.black.withOpacity(0.5),
          inactiveIconColor: Color(0xff8e939f),
          barBackgroundColor: Colors.white,
          barHeight: 50,
          iconYAxisSpace: 30,
          tabs: [
            TabData(
              icon: Icons.home_outlined,
              iconSize: 25,
              /*onClick: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ));
                }*/
            ),
            TabData(
              icon: Icons.search_rounded,
              iconSize: 25,
              /*onClick: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ));
                }*/
            ),
            TabData(icon: Icons.delivery_dining_outlined, iconSize: 25),
            TabData(icon: Icons.list_alt_rounded, iconSize: 25),
            TabData(
              icon: Icons.account_circle_outlined,
              iconSize: 25,
              /*onClick: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  ));
                }*/
            ),
          ],
          onTabChangedListener: (int position) {},
        ));
  }

  Container food(String name, String img) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 160,
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
            style: TextStyle(fontFamily: 'Amiri'),
          ),
        ],
      ),
    );
  }

  GestureDetector rest(String img, String name, String ResType,
      String DeliveryTime, double Rate) {
    return GestureDetector(
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
        child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(img), fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      top: 15,
                      right: 15,
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
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Amiri',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
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
                    padding: EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Amiri'))),
                Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("\$\$",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Amiri')),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 3,
                          height: 3,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),
                        Text(ResType,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'Amiri')),
                      ],
                    )),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(right: 5),
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
                          Icon(
                            Icons.star,
                            color: Colors.lightBlueAccent,
                            size: 12,
                          ),
                          Text("$Rate",
                              style:
                                  TextStyle(fontSize: 12, fontFamily: 'Amiri')),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 5),
                      padding: EdgeInsets.only(right: 5),
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent.withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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

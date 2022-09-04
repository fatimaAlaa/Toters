import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/1_HomePage/ResturantDetailsPage/2_FoodDetails/Food.dart';
import 'package:toters/2_SearchPage/MainPage/Search.dart';
import 'package:toters/3_DeliveryPage/Delivery.dart';
import 'package:toters/4_OrdersPage/order.dart';
import 'package:toters/5_Profile/ProfileDetails.dart';

class Details extends StatefulWidget {
  final String ResImg;
  final String ResName;
  final String Description;
  final String DeliveryTime;
  final double Rate;
  final int RatingNumbers;
  final String Comment;
  final String CommentName;

  Details({
    required this.ResImg,
    required this.ResName,
    required this.Description,
    required this.DeliveryTime,
    required this.Rate,
    required this.RatingNumbers,
    required this.Comment,
    required this.CommentName,
  });
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool sizeBool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.ResImg),
                              fit: BoxFit.cover)),
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
                                widget.DeliveryTime,
                                style: const TextStyle(
                                    color: Colors.black, fontFamily: 'Amiri'),
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
                    Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(Icons.search_rounded),
                        )),
                    Positioned(
                        top: 10,
                        right: 60,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(Icons.share),
                        )),
                    Positioned(
                        top: 10,
                        right: 110,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(Icons.favorite),
                        )),
                    Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.arrow_back),
                            ))),
                  ],
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, bottom: 5),
                    child: Text(widget.ResName,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Amiri'))),
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(widget.Description,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontFamily: 'Amiri'))),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  width: 90,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.blue,
                        size: 12,
                      ),
                      Text(
                        "Earn Points",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10,
                            fontFamily: 'Amiri'),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${widget.Rate}",
                              style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Amiri'),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff00b491),
                                          size: 25,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff00b491),
                                          size: 25,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff00b491),
                                          size: 25,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff00b491),
                                          size: 25,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey.withOpacity(0.5),
                                          size: 25,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Based on ${widget.RatingNumbers} ratings",
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Color(0xff00b491),
                        )
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 10, right: 15, left: 15),
                  width: MediaQuery.of(context).size.width - 25,
                  height: 2,
                  color: Colors.grey.withOpacity(0.2),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      children: [
                        Text(
                          widget.CommentName,
                          style: const TextStyle(
                              fontFamily: 'Amiri',
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xff00b491),
                          size: 15,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xff00b491),
                          size: 15,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xff00b491),
                          size: 15,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xff00b491),
                          size: 15,
                        ),
                        const Icon(
                          Icons.star,
                          color: Color(0xff00b491),
                          size: 15,
                        ),
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 18, top: 3),
                    child: Text("\"${widget.Comment}\"",
                        style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontFamily: 'Amiri'))),
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, bottom: 10, right: 15, left: 15),
                  width: MediaQuery.of(context).size.width - 25,
                  height: 2,
                  color: Colors.grey.withOpacity(0.2),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.note_alt_outlined,
                                  size: 25,
                                  color: Color(0xff00b491),
                                )),
                            Text("Write a review",
                                style: TextStyle(
                                    fontFamily: 'Amiri',
                                    fontSize: 12,
                                    color: Color(0xff00b491),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 25,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.withOpacity(0.5),
                              size: 25,
                            ),
                          ],
                        )
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                  color: Colors.grey.withOpacity(0.1),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("images/kunafa.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const Text("Cheese Kunafa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Amiri')),
                      const SizedBox(height: 6),
                      const Text(
                        "IQD 6,000",
                        style: TextStyle(
                          color: Color(0xff10af90),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                  color: Colors.grey.withOpacity(0.1),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Baklava",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Amiri',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  color: Colors.grey.withOpacity(0.3),
                ),
                FoodPost("images/baklava.jpg", "Turkish Baklava",
                    "baklava coverd with \n suger syurp", 11.000),
                FoodPost("images/Burma.jpg", "Turkish Barma",
                    "baklava coverd with \n suger syurp", 9.000),
              ],
            )
          ],
        ),
    );
  }

  InkWell FoodPost(String img, String name, String description, double price) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FoodDetailsPage(
                    img: img,
                    name: name,
                    description: description,
                    price: price,
                  )));
        },
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              sizeBool = !sizeBool;
            });
          }
        },
        child: AnimatedContainer(
            padding: const EdgeInsets.all(15),
            duration: const Duration(seconds: 1),
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Amiri'),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Amiri'),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "IQD $price",
                      style: const TextStyle(color: Color(0xff10af90), fontSize: 14),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover)),
                )
              ],
            )));
  }
}

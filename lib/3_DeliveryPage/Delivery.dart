import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/2_SearchPage/MainPage/Search.dart';
import 'package:toters/4_OrdersPage/order.dart';
import 'package:toters/5_Profile/ProfileDetails.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 130,
          backgroundColor: Color(0xff10af90),
          title: Text(
            "We deliver anything that fits on \na motorbike",
            style: TextStyle(
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold,
                wordSpacing: 2.5),
          ),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(height: 15),
              Text(
                "Request a butler to:",
                style: TextStyle(
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 10,
                      offset: Offset(-3,-3),
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deliver your stuff",
                            style: TextStyle(
                              fontFamily: 'Amiri',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff10af90),
                              fontSize: 16
                            )),
                        SizedBox(height: 10),
                        Text("e.g. you forgot your key and \nneed someone to get your\n keys from home",
                            style: TextStyle(
                                fontFamily: 'Amiri',
                                color: Colors.grey,
                                fontSize: 12
                            )),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Color(0xff5fcab6),
                      size: 15,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        offset: Offset(-3,-3),
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Buy something",
                            style: TextStyle(
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff10af90),
                                fontSize: 16
                            )),
                        SizedBox(height: 10),
                        Text("Didn't find what you looking for? \nWe can bring it from \nother place for you",
                            style: TextStyle(
                                fontFamily: 'Amiri',
                                color: Colors.grey,
                                fontSize: 12
                            )),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Color(0xff5fcab6),
                      size: 15,
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }
}

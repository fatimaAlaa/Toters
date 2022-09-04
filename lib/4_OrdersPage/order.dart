import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/2_SearchPage/MainPage/Search.dart';
import 'package:toters/3_DeliveryPage/Delivery.dart';
import 'package:toters/5_Profile/ProfileDetails.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: TabBar(
                tabs: [
                  Tab(
                    text: "Past Orders",
                  ),
                  Tab(
                    text: "Upcoming",
                  ),
                ],
                indicatorColor: Colors.green,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontFamily: 'Amiri')),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("No Past Orders",
                    style: TextStyle(fontFamily: 'Amiri')),
              ),
              Center(
                child: Text("No Upcoming Orders",
                    style: TextStyle(fontFamily: 'Amiri')),
              ),
            ],
          ),
        ));
  }
}

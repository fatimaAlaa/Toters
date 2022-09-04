import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/2_SearchPage/SearchDetails/SecondPage.dart';
import 'package:toters/3_DeliveryPage/Delivery.dart';
import 'package:toters/4_OrdersPage/order.dart';
import 'package:toters/5_Profile/ProfileDetails.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SearchDetails()));
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Search for store or item",
                      style: TextStyle(
                          fontFamily: 'Amiri',
                          color: Colors.black,
                          fontSize: 14),
                    )
                  ],
                )),
          ),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Collections",
                style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Store("images/HH.jpg", "Happy Hour🤩", 36),
                Store("images/discountt.jpg", "Weekly Discounts💸", 66),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Store("images/cashback.jpg", "Cashback💰", 30),
                Store("images/try.jpg", "Try & Save🤑", 36),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Store("images/new.jpg", "Try New🆕", 108),
                Store("images/local.jpg", "Local Favorites", 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Store("images/free.png", "Get Free Meal🍲", 58),
                Store("images/flower.jpg", "Flower Bouquets🌼", 3),
              ],
            )
          ],
        ),
    );
  }

  Container Store(String img, String Name, int SNumber) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          const SizedBox(height: 10),
          Text(
            Name,
            style: const TextStyle(
                fontFamily: 'Amiri', fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Text(
            "$SNumber Stores",
            style: const TextStyle(
                fontFamily: 'Amiri', color: Colors.grey, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

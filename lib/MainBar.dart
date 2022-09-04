import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/2_SearchPage/MainPage/Search.dart';
import 'package:toters/3_DeliveryPage/Delivery.dart';
import 'package:toters/4_OrdersPage/order.dart';
import 'package:toters/5_Profile/ProfileDetails.dart';

class MainNav extends StatefulWidget {
  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    SearchPage(),
    DeliveryPage(),
    OrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: GNav(
              rippleColor: Colors.grey,
              hoverColor: Colors.green,
              haptic: true,
              tabBorderRadius: 20,
              tabActiveBorder: Border.all(color: Colors.green, width: 1),
              //tabBorder:Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
              //tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 8)],
              curve: Curves.easeOutExpo,
              duration: const Duration(milliseconds: 300),
              gap: 3,
              color: Colors.grey[600],
              activeColor: Colors.green,
              iconSize: 25,
              //tabBackgroundColor: Colors.black.withOpacity(0.1),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                ),
                GButton(
                  icon: Icons.delivery_dining_outlined,
                  text: "Delivery",
                ),
                GButton(
                  icon: Icons.list_alt,
                  text: "Orders",
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: "Profile",
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

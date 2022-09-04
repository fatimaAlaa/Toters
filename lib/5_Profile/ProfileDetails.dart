import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:toters/1_HomePage/MainPage/Home.dart';
import 'package:toters/2_SearchPage/MainPage/Search.dart';
import 'package:toters/3_DeliveryPage/Delivery.dart';
import 'package:toters/4_OrdersPage/order.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        title: const Text("Fatima Alaa",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Amiri')),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                padding: const EdgeInsets.all(5),
                height: 41,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8, left: 8),
                      child: Icon(
                        Icons.card_giftcard,
                        color: Color(0xff5fcab6),
                        size: 20,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Green",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.bold)),
                        Text("5.2k Pts",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Amiri',
                                color: Colors.grey)),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Color(0xff5fcab6),
                      size: 15,
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.manage_accounts_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        const Text("Profile",
                            style: TextStyle(fontSize: 12, fontFamily: 'Amiri'))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        const Text("Support",
                            style: TextStyle(fontSize: 12, fontFamily: 'Amiri'))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.payment,
                            color: Colors.grey,
                          ),
                        ),
                        const Text("Payments",
                            style: TextStyle(fontSize: 12, fontFamily: 'Amiri'))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: const Icon(
                            Icons.language,
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          "Language",
                          style: TextStyle(fontSize: 12, fontFamily: 'Amiri'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Toters  Cash",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 5),
                        Icon(
                          Icons.info_outlined,
                          color: Color(0xff5fcab6),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.wallet, color: Color(0xff8e939e)),
                        SizedBox(width: 5),
                        Text("Wallet",
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                        Spacer(),
                        Text("IQD 0",
                            style: TextStyle(
                                fontFamily: 'Amiri',
                                color: Color(0xff5fcab6),
                                fontWeight: FontWeight.bold,
                                fontSize: 12))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.add, color: Color(0xff8e939e)),
                        SizedBox(width: 5),
                        Text("Add Funds",
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.compare_arrows_outlined,
                            color: Color(0xff8e939e)),
                        SizedBox(width: 5),
                        Text("Send Funds",
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Promotions",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(
                          Icons.percent_rounded,
                          color: Color(0xff8e939e),
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Text("Credits",
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                        Spacer(),
                        Text("IQD 0",
                            style: TextStyle(
                                fontFamily: 'Amiri',
                                color: Color(0xff5fcab6),
                                fontWeight: FontWeight.bold,
                                fontSize: 12))
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.qr_code_2_outlined,
                            color: Color(0xff8e939e),
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text("Add Promo Code",
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                margin: const EdgeInsets.only(left: 20,right: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Account Details",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.notifications_none,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Notifications",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Addresses",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.favorite_border_outlined,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Favorites",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.tune_outlined,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Preferences",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.supervisor_account_rounded,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Refer a Friend",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 225,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Help Center",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.headset_mic_outlined,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Get Support",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.chat_outlined,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Support Tickets",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [

                        Icon(Icons.account_balance,
                            color: Color(0xff8e939e),
                            size: 18
                        ),
                        SizedBox(width: 5),
                        Text("Legal",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: MediaQuery.of(context).size.width,
                      height: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.question_mark_outlined,
                          color: Color(0xff8e939e),
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text("FAQ",
                            style:
                            TextStyle(fontFamily: 'Amiri', fontSize: 12)),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Row(
                  children: const [
                    Icon(Icons.output_rounded,
                        color: Color(0xffd7031d),
                        size: 16
                    ),
                    SizedBox(width: 5),
                    Text("Sign out",
                        style:
                        TextStyle(fontFamily: 'Amiri', fontSize: 14,
                          color: Color(0xffd7031d),
                        )),


                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

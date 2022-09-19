import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  //Sort by
  bool clicked1 = true;
  bool clicked2 = false;
  bool clicked3 = false;
  bool clicked4 = false;

  //Quick Filter
  bool ColorChange = false;
  bool TextColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Filters",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Amiri',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Sort by",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Amiri', fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked1 = !clicked1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: (clicked1
                                ? Color(0xff0cd2ae)
                                : Colors.grey.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          LineIcons.grinningFaceWithSmilingEyes,
                          color: (clicked1 ? Colors.white : Colors.grey),
                          size: 25,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Recommended",
                        style: TextStyle(
                            color: (clicked1 ? Color(0xff0cd2ae) : Colors.grey),
                            fontFamily: 'Amiri',
                            fontSize: 12),
                      ),
                    ],
                  ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked2 = !clicked2;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: (clicked2
                                ? Color(0xff0cd2ae)
                                : Colors.grey.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          LineIcons.heartAlt,
                          color: (clicked2 ? Colors.white : Colors.grey),
                          size: 25,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Popular",
                        style: TextStyle(
                            color: (clicked2 ? Color(0xff0cd2ae) : Colors.grey),
                            fontFamily: 'Amiri',
                            fontSize: 12),
                      ),
                    ],
                  ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      clicked3 = !clicked3;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: (clicked3
                                ? Color(0xff0cd2ae)
                                : Colors.grey.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          LineIcons.clock,
                          color: (clicked3 ? Colors.white : Colors.grey),
                          size: 25,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Delivery Time",
                        style: TextStyle(
                            color: (clicked3 ? Color(0xff0cd2ae) : Colors.grey),
                            fontFamily: 'Amiri',
                            fontSize: 12),
                      ),
                    ],
                  ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    clicked4 = !clicked4;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: (clicked4
                              ? Color(0xff0cd2ae)
                              : Colors.grey.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        LineIcons.starAlt,
                        color: (clicked4 ? Colors.white : Colors.grey),
                        size: 25,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Rating",
                      style: TextStyle(
                          color: (clicked4 ? Color(0xff0cd2ae) : Colors.grey),
                          fontFamily: 'Amiri',
                          fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.grey.withOpacity(0.2),
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Quick Filters",
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'Amiri', fontSize: 16),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Clear",
                      style: TextStyle(
                          color: Color(0xff21bea1),
                          fontFamily: 'Amiri',
                          fontSize: 13),
                    ),
                  )
                ],
              )),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "New",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Amiri', fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 8),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Free Delivery",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Amiri', fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 8),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Offers",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Amiri', fontSize: 14),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    ColorChange = !ColorChange;
                    TextColor = !TextColor;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: (ColorChange
                          ? Color(0xff0cd2ae)
                          : Colors.grey.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Lowest Price",
                    style: TextStyle(
                        color: TextColor ? Colors.white : Colors.grey,
                        fontFamily: 'Amiri',
                        fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ColorChange = !ColorChange;
                    TextColor = !TextColor;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: (ColorChange
                          ? Color(0xff0cd2ae)
                          : Colors.grey.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Mid Range",
                    style: TextStyle(
                        color: TextColor ? Colors.white : Colors.grey,
                        fontFamily: 'Amiri',
                        fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ColorChange = !ColorChange;
                    TextColor = !TextColor;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: (ColorChange
                          ? Color(0xff0cd2ae)
                          : Colors.grey.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "High End",
                    style: TextStyle(
                        color: TextColor ? Colors.white : Colors.grey,
                        fontFamily: 'Amiri',
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.grey.withOpacity(0.2),
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: Color(0xff10af90), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Sort Stores",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

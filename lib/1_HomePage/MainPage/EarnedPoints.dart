import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Points extends StatefulWidget {
  final int OrdersNumbers;
  final DateTime TodayDate;

  const Points({required this.OrdersNumbers, required this.TodayDate});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Color(0xff00b491),//10af90
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          borderRadius: BorderRadius.circular(50),
          child: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Green",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Amiri'),
            ),
            SizedBox(width: 5),
            Icon(
              LineIcons.exclamationCircle,
              size: 20,
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            color: Color(0xff00b491),
            child: Column(
              children: [
                Text(
                  "${widget.OrdersNumbers} more orders by ${widget.TodayDate.month}-${widget.TodayDate.day} to reach Gold",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Amiri',
                    wordSpacing: 3,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "0 order(s)",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'Amiri',
                      ),
                    ),
                    DashedCircle(
                      color: Colors.white.withOpacity(0.2),
                      dashes: widget.OrdersNumbers,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff00b491),
                          radius: 80,
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              Text(
                                "5,288",
                                style: TextStyle(
                                    letterSpacing: 5,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Amiri'),
                              ),
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(5),
                                width: 130,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "Points History",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily: 'Amiri'),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "out of ${widget.OrdersNumbers}",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: 'Amiri',
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
                "Use your reward points to \n"
                "enjoy a wide range of exclusive \n"
                "offers, dicounts, free meals and \n"
                "benefits",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontFamily: 'Amiri',
              wordSpacing: 3,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 8,
            color: Colors.grey.withOpacity(0.1),
            margin: EdgeInsets.symmetric(vertical: 25),
          ),


        ],
      ),
    );
  }
}

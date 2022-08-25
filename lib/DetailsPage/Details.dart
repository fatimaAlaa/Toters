import 'package:flutter/material.dart';

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
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'Amiri'),
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
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(Icons.search_rounded),
                      )),
                  Positioned(
                      top: 10,
                      right: 60,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(Icons.share),
                      )),
                  Positioned(
                      top: 10,
                      right: 110,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(Icons.favorite),
                      )),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.arrow_back),
                          ))),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, top: 10, bottom: 5),
                  child: Text(widget.ResName,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Amiri'))),
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(widget.Description,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Amiri'))),
              Container(
                margin: EdgeInsets.only(left: 20, top: 15, bottom: 20),
                padding: EdgeInsets.only(right: 5, left: 5),
                width: 90,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueAccent.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${widget.Rate}",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Amiri'),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff00b491),
                                        size: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff00b491),
                                        size: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff00b491),
                                        size: 25,
                                      ),
                                      Icon(
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
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xff00b491),
                      )
                    ],
                  )),
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 10, right: 15, left: 15),
                width: MediaQuery.of(context).size.width - 25,
                height: 2,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    children: [
                      Text(
                        widget.CommentName,
                        style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff00b491),
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff00b491),
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff00b491),
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff00b491),
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff00b491),
                        size: 15,
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 18, top: 3),
                  child: Text("\"${widget.Comment}\"",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontFamily: 'Amiri'))),
              Container(
                margin:
                    EdgeInsets.only(top: 20, bottom: 10, right: 15, left: 15),
                width: MediaQuery.of(context).size.width - 25,
                height: 2,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                margin: EdgeInsets.only(top: 20, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 6,
                color: Colors.grey.withOpacity(0.1),
              ),
            ],
          )
        ],
      ),
    );
  }
}

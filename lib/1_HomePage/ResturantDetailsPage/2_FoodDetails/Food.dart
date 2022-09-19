import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toters/1_HomePage/MainPage/Home.dart';

class FoodDetailsPage extends StatefulWidget {
  final String img;
  final String name;
  final String description;
   double price;

  FoodDetailsPage(
      {required this.img,
      required this.name,
      required this.description,
      required this.price});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  String RadioItem = '';
  bool CheckItem1 = false;
  bool CheckItem2 = true;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.share,
            color: Colors.black,
          ),
          SizedBox(width: 20),
          Icon(Icons.favorite_border_outlined, color: Colors.black),
          SizedBox(width: 10),
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.close, color: Colors.black)),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'Amiri',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              widget.description,
              style: const TextStyle(
                  fontSize: 15, fontFamily: 'Amiri', color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "IQD ${widget.price}",
              style: const TextStyle(
                  fontSize: 15, fontFamily: 'Amiri', color: Color(0xff10af90)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 5,
            color: Colors.grey.withOpacity(0.1),
            margin: const EdgeInsets.only(bottom: 10, top: 10),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Choose a portion",
              style: TextStyle(
                  fontFamily: 'Amiri',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          RadioListTile(
            title: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "1/2kg",
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 14,
                  ),
                )),
            value: "1/2k",
            groupValue: RadioItem,
            onChanged: (val) {
              setState(() {
                RadioItem = "$val";
                widget.price = widget.price /2;

              });
            },
            activeColor: const Color(0xff10af90),
          ),
          RadioListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "1kg",
                  style: TextStyle(fontFamily: 'Amiri', fontSize: 14),
                ),
                const SizedBox(width: 10),
                Text(
                  "+${widget.price} IQD",
                  style: const TextStyle(
                      fontFamily: 'Amiri', fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
            value: "1k",
            groupValue: RadioItem,
            onChanged: (val) {
              setState(() {
                RadioItem = "$val";
                widget.price = widget.price *2;
              });
            },
            activeColor: const Color(0xff10af90),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 5,
            color: Colors.grey.withOpacity(0.1),
            margin: const EdgeInsets.only(bottom: 20, top: 20),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Any special instructions?",
                style: TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            margin: const EdgeInsets.all(15),
            child: TextFormField(
              cursorColor: Colors.grey.withOpacity(0.4),
              decoration: InputDecoration(
                  hintText: "Tell us here",
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  contentPadding: const EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(color: Colors.grey.withOpacity(0.5))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      BorderSide(color: Colors.grey.withOpacity(0.5)))),
            ),
          )
          /*CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
              value: CheckItem1,
              onChanged: (val) {
                setState(() {
                  CheckItem1 = val!;
                });
              },
            activeColor: Colors.green,
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
              value: CheckItem2,
              onChanged: (val) {
                setState(() {
                  CheckItem2 = val!;
                });
              },
            activeColor: Colors.green,
          ),*/
        ],
      ),
      bottomNavigationBar: Container(
          height: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15,top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (count > 1) count--;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Icon(
                          Icons.minimize,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text("$count",
                        style: const TextStyle(fontSize: 20, fontFamily: 'Amiri')),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                margin: const EdgeInsets.only(left: 15,right:15 ,top: 20,bottom: 10),
                color: Colors.grey.withOpacity(0.3),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xff10af90),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("$count Items",
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Amiri',
                            color: Colors.white)),

                    const Text("Add to cart",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Amiri',
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(" ${count * widget.price} IQD ",
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Amiri',
                            color: Colors.white)),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

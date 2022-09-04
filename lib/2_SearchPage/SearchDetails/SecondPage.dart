import 'package:flutter/material.dart';

class SearchDetails extends StatefulWidget {
  const SearchDetails({Key? key}) : super(key: key);

  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 80,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: TextFormField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.1),
                  hintText: "Search for store or item",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
            bottom: TabBar(tabs: [
              Tab(
                text: "Stores (0)",
              ),
              Tab(
                text: "Items (0)",
              ),
            ],
                indicatorColor: Colors.green, labelColor: Colors.black,
            labelStyle: TextStyle(fontFamily: 'Amiri')),
          ),
        ));
  }
}

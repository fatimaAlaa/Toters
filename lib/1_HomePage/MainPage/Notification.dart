import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          "Notifications",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Amiri',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(LineIcons.dizzyFace,color: Color(0xff05cba6),size: 130), //0xff99dcd3
          SizedBox(height: 15),
          Text(
            "No Notifications",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Amiri',
                fontWeight: FontWeight.bold,fontSize: 18),
          ),
          SizedBox(height: 5),
          Text(
            "You'll be able to keep track of your \n notification on this page",
            style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Amiri',wordSpacing: 3),textAlign: TextAlign.center,
          ),
        ],
      ),),
    );
  }
}

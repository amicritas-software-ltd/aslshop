import 'package:flutter/material.dart';

class chat extends StatefulWidget {
 @override
 _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromRGBO(101, 36, 255, 99),
   appBar: AppBar(
    title: Text(
     "Message",
     style: TextStyle(
         fontWeight: FontWeight.w700,
         fontSize: 22.0,
         letterSpacing: 2.0,
         color: Colors.white,
         fontFamily: "Berlin"),
    ),
    iconTheme: IconThemeData(
     color: Colors.black,
    ),
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.deepPurpleAccent,
   ),
   body: Container(
    color: Colors.white,
    width: 500.0,
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 150.0)),
      Image.asset(
       "assets/img/notmessage.png",
       height: 200.0,
      ),
      Padding(padding: EdgeInsets.only(bottom: 20.0)),
      Text(
       "Not Message Yet",
       style: TextStyle(
           fontWeight: FontWeight.w700,
           fontSize: 19.5,
           color: Colors.black,
           fontFamily: "Gotik"),
      ),
     ],
    ),
   ),
  );
 }
}

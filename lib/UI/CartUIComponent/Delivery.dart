import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/BottomNavigationBar.dart';
import 'package:treva_shop_flutter/UI/CartUIComponent/Payment.dart';

class delivery extends StatefulWidget {
  @override
  _deliveryState createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop(false);
            },
            child: Icon(Icons.arrow_back)),
        elevation: 0.0,
        title: Text(
          "Delivery",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: "Gotik"),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(101, 36, 255, 99),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white30,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Where are your ordered items shipped ?",
                  style: TextStyle(
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                      color: Colors.black,
                      fontFamily: "Gotik"),
                ),
                Padding(padding: EdgeInsets.only(top: 50.0)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Pin Code",
                      hintText: "Pin Code",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Locality",
                      hintText: "Locality",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "City",
                      hintText: "City",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "State",
                      hintText: "State",
                      hintStyle: TextStyle(color: Colors.white)),
                ),
                Padding(padding: EdgeInsets.only(top: 80.0)),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => payment()));
                  },
                  child: Container(
                    height: 55.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(101, 36, 255, 99),
                        borderRadius: BorderRadius.all(Radius.circular(40.0))),
                    child: Center(
                      child: Text(
                        "Go to payment",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.5,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

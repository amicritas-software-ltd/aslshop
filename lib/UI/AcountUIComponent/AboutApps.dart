import 'package:flutter/material.dart';

class aboutApps extends StatefulWidget {
  @override
  _aboutAppsState createState() => _aboutAppsState();
}

class _aboutAppsState extends State<aboutApps> {
  @override

  static var _txtCustomHead = TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Application",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15.0,
              color: Colors.white,
              fontFamily: "Gotik"),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromRGBO(101, 36, 255, 99),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white30,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  height: 0.5,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/img/Logo.png",
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "ASL Shop",
                            style: _txtCustomSub.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Online Shopping App",
                            style: _txtCustomSub,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  height: 0.5,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "ASL Shop is an online shopping app for buyers where they can buy all their desire items."
                      "This app is also for sellers and they can sell all there items.",
                  style: _txtCustomSub,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

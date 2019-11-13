import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:treva_shop_flutter/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:treva_shop_flutter/UI/LoginOrSignup/ChoseLoginOrSignup.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}

var _fontHeaderStyle = TextStyle(
  fontFamily: "Popins",
  fontSize: 21.0,
  fontWeight: FontWeight.w800,
  color: Colors.black87,
  letterSpacing: 1.5
);

var _fontDescriptionStyle = TextStyle(
  fontFamily: "Sans",
  fontSize: 15.0,
  color: Colors.black,
  fontWeight: FontWeight.w400
);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor:  Color.fromRGBO(101, 36, 255, .25),
      iconColor: Colors.black,
      bubbleBackgroundColor: Color.fromRGBO(101, 36, 255, .25),
      title: Text(
        'ASL Shopping',style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
          'ASL Shopping App \nbuy your desired product easily.',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Color.fromRGBO(101, 36, 255, .25),
      iconColor: Colors.black,
      bubbleBackgroundColor: Color.fromRGBO(101, 36, 255, .25),
      title: Text(
        'Choose Item',style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Choose Items wherever you are from our shopping app to make life easier',textAlign: TextAlign.center,
            style: _fontDescriptionStyle
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Color.fromRGBO(101, 36, 255, .25),
      iconColor: Colors.black,
      bubbleBackgroundColor: Color.fromRGBO(101, 36, 255, .25),
      title: Text(
        'Buy Item',style: _fontHeaderStyle,
      ),
      body: Container(
        height: 250.0,
        child: Text(
            'Shop from thousand brands in the world \n in one shop at throwaway \nprices ',textAlign: TextAlign.center,
            style: _fontDescriptionStyle
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

];

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black,
      skipText: Text("SKIP",style: _fontDescriptionStyle.copyWith(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      doneText: Text("DONE",style: _fontDescriptionStyle.copyWith(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      onTapDoneButton: (){
        Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (_,__,___)=> new ChoseLogin(),
        transitionsBuilder: (_,Animation<double> animation,__,Widget widget){
          return Opacity(
            opacity: animation.value,
            child: widget,
          );
        },
        transitionDuration: Duration(milliseconds: 1500),
        ));
      },
    );
  }
}


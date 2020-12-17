import 'package:flutter/material.dart';
import 'package:le_jutti/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'logo',
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logo.jpg'), fit: BoxFit.cover),
          ),
        ),
      ),

      // backgroundColor: Colors.white,
      // body: Center(
      //child: Hero(
      //tag: 'logo',
      // child: Image.asset(
      // 'assets/logo.jpg',
      //  height: 400,
      //width: 400,
      // ),
      //),
      // )
    );
  }
}

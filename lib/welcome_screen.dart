import 'package:flutter/material.dart';
import 'package:le_jutti/registration_screen.dart';
import 'login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'product_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFdbdde0),
              Color(0xffffffff),
              Color(0xFFdbdde0),
              Color(0xffffffff),
              Color(0xFFdbdde0),
              Color(0xffffffff),
              Color(0xFFdbdde0),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('assets/logo2.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 28.0,
                  ),
                  Text(
                    'le_jutti',
                    style: GoogleFonts.pacifico(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEAAA67),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFEAAA67),
                          Color(0xFFF6C087),
                          Color(0xFFE6A35C),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFF6C087),
                            blurRadius: 20.0,
                            offset: Offset(0, 9))
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Login',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEAAA67),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFEAAA67),
                          Color(0xFFF6C087),
                          Color(0xFFE6A35C),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFF6C087),
                            blurRadius: 20.0,
                            offset: Offset(0, 9))
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEAAA67),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFEAAA67),
                          Color(0xFFF6C087),
                          Color(0xFFE6A35C),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFF6C087),
                            blurRadius: 20.0,
                            offset: Offset(0, 9))
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProductScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Take me in as guest',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFEAAA67),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFEAAA67),
                          Color(0xFFF6C087),
                          Color(0xFFE6A35C),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFF6C087),
                            blurRadius: 20.0,
                            offset: Offset(0, 9))
                      ]),
                  child: MaterialButton(
                    onPressed: () {
                      _launchURL();
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Follow us on instagram',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.instagram.com/le_jutti';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:le_jutti/product_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'welcome_screen.dart';
import 'splash_screen.dart';

void main() => runApp(LeJutti());

class LeJutti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFD2B49B),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        ProductScreen.id: (context) => ProductScreen(),
      },
    );
  }
}

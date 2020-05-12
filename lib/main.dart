import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final primarygcolor=Color(0xFFFFB073);
  final backgcolor=Color(0xff202020);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
       theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primarygcolor,
        scaffoldBackgroundColor: backgcolor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: primarygcolor),
          headline2:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }

}



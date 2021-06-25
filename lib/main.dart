import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login.dart';
import 'package:flutter_application_1/Screens/home_page.dart';

void main(List<String> args) {
  runApp(Zohran());
}

class Zohran extends StatelessWidget {
  const Zohran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        //"/": (context) => Homepage(),
        "/home": (context) => Homepage(),
        "/LoginPage": (context) => LoginPage(),
      },
      //1home: Homepage(),
    );
  }
}

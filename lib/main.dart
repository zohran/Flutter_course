import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login.dart';
import 'package:flutter_application_1/Screens/home_page.dart';
import 'package:flutter_application_1/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(Zohran());
}

class Zohran extends StatelessWidget {
  const Zohran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: MyRouts.homerout,
      routes: {
        //"/": (context) => Homepage(),
        MyRouts.homerout: (context) => Homepage(),
        MyRouts.loginrout: (context) => LoginPage(),
      },
      //1home: Homepage(),
    );
  }
}

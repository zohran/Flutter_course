import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main(List<String> args) {
  runApp(Zohran());
}

class Zohran extends StatelessWidget {
  const Zohran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

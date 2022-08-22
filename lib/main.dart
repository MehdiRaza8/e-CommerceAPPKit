import 'package:flutter/material.dart';
import 'package:styleapp/Screen/botomnav.dart';
import 'package:styleapp/Screen/boyone.dart';
import 'package:styleapp/Screen/girlstow.dart';
import 'package:styleapp/Screen/home.dart';
import 'package:styleapp/Screen/loginpage/login.dart';
import 'package:styleapp/Screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BotomnavBar(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_sphere/signup_page.dart';
import './splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (context) => splashScreen(),
      'signup_page': (context) => SignupPage(),
    },
  ));
}
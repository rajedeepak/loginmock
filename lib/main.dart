import 'package:flutter/material.dart';
import 'package:login_mockup/screens/LoginPage/login_page.dart';
import 'screens/HomePage/home-page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: LoginPage(),
    );
  }
}
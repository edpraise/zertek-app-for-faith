import 'package:flutter/material.dart';
import 'package:zertekpay/screens/login_screen.dart';
// import 'package:zertekpay/screens/login_screen.dart';
import 'package:zertekpay/screens/success_scree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zertekpay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
      Login(),
    );
  }
}


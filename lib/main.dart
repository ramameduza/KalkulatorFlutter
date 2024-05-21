import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'product_page.dart';
import 'cart_page.dart';

void main() {
  runApp(PraktikumMobileApp());
}

class PraktikumMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
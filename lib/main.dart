import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'landing_page.dart';
import 'product_page.dart';
import 'cart_page.dart';
import 'cart_model.dart';
import 'splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: PraktikumMobileApp(),
    ),
  );
}

class PraktikumMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/': (context) => LandingPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
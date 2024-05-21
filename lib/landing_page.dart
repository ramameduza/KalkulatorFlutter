import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/tes.jpg'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
              child: Text('Go to Product Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: Text('Go to Cart Page'),
            ),
          ],
        ),
      ),
    );
  }
}
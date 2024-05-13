import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      home: CalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _add,
              child: Text('Add'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _subtract,
              child: Text('Subtract'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _multiply,
              child: Text('Multiply'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _divide,
              child: Text('Divide'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _add() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    setState(() {
      result = num1 + num2;
    });
  }

  void _subtract() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    setState(() {
      result = num1 - num2;
    });
  }

  void _multiply() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    setState(() {
      result = num1 * num2;
    });
  }

  void _divide() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    setState(() {
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        result = double.infinity;
      }
    });
  }
}
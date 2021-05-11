import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Center(
          child: Text("Hey there!", style: TextStyle(fontSize: 24)),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangeColor()),
        ),
      ),
    );
  }
}

Color tmpFunction() {
  Scaffold(
    backgroundColor: Colors.black,
  );
  print('Function Called.');
  Random random = new Random();
  int ran = random.nextInt(10);
  Random randomizer = new Random();
  return Color.fromARGB(randomizer.nextInt(256), randomizer.nextInt(256),
      randomizer.nextInt(256), randomizer.nextInt(256));
}

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: tmpFunction(),
      body: InkWell(
        child: Center(
          child: Text("Hey there!", style: TextStyle(fontSize: 24)),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangeColor()),
        ),
      ),
    ));
  }
}

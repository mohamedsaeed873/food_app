import 'package:flutter/material.dart';
import 'package:food_app/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}


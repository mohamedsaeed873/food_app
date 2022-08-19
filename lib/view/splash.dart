import 'package:flutter/material.dart';
import 'package:food_app/view/tips/getstart.dart';
import 'package:splashscreen/splashscreen.dart';

import 'config.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const GetStart(),
      title: const Text(
        'مرحبا بكم في تطبيق مطعمنا',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20.0, color: primarycolor),
      ),
      image: Image.network(
          'https://i.pinimg.com/originals/4e/95/ff/4e95ff2406e7914e70cbbba6dd9c51d2.jpg'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: const TextStyle(color: Colors.white),
      photoSize: 100.0,
      // ignore: avoid_print
      onClick: () => print('medoApp'),
      loaderColor: primarycolor,
    );
  }
}
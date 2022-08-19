
import 'package:flutter/material.dart';

import '../view/config.dart';
class SingelTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  // ignore: prefer_const_constructors_in_immutables
  SingelTips(
      {Key? key, required this.title, required this.info, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primarycolor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Text(
            info,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
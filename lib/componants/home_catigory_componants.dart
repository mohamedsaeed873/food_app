import 'package:flutter/material.dart';

class SingleCat extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  // ignore: use_key_in_widget_constructors
  const SingleCat(
      {required this.cat_id, required this.cat_name, required this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            cat_image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            cat_name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
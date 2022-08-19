import 'package:flutter/material.dart';

import '../view/product/product.dart';

class SingleSubCatigory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  const SingleSubCatigory(
      {required this.sub_id,
        required this.sub_image,
        required this.sub_name,
        required this.sub_count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Product(
                      pro_name: sub_name,
                    )));
          },
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                sub_image,
              ),
            ),
            title: Text(
              sub_name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            subtitle: Text(
              sub_count,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
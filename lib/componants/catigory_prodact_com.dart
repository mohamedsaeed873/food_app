import 'package:flutter/material.dart';

import '../view/product/subcatigory.dart';

class SingleCatigory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  const SingleCatigory(
      {Key? key,
        required this.cat_id,
        required this.cat_name,
        required this.cat_image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SubCatigory(cat_id: cat_id, cat_name: cat_name)));
          },
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                cat_image,
              ),
            ),
            title: Text(
              cat_name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
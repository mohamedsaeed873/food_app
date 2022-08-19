// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:food_app/componants/singleSob_componants.dart';
import 'package:food_app/view/product/product.dart';

class SubCatigory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  const SubCatigory({required this.cat_id, required this.cat_name});

  @override
  State<SubCatigory> createState() => _SubCatigoryState();
}

class _SubCatigoryState extends State<SubCatigory> {
  List my_catigory = [
    {
      "sub_id": "1",
      "sub_name": "سمك",
      "sub_image": "assets/images/salad.png",
      "sub_count": "2",
    },
    {
      "sub_id": "2",
      "sub_name": "جمبري",
      "sub_image": "assets/images/salad.png",
      "sub_count": "2",
    },
    {
      "sub_id": "3",
      "sub_name": "سيفود",
      "sub_image": "assets/images/salad.png",
      "sub_count": "5",
    },
    {
      "sub_id": "1",
      "sub_name": "medo",
      "sub_image": "assets/images/salad.png",
      "sub_count": "10",
    },
    {
      "sub_id": "2",
      "sub_name": "ahmed",
      "sub_image": "assets/images/salad.png",
      "sub_count": "11",
    },
    {
      "sub_id": "3",
      "sub_name": "medo",
      "sub_image": "assets/images/salad.png",
      "sub_count": "6",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cat_name,
          style: const TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return SingleSubCatigory(
                  sub_id: my_catigory[index]["sub_id"],
                  sub_name: my_catigory[index]["sub_name"],
                  sub_image: my_catigory[index]["sub_image"],
                  sub_count: my_catigory[index]["sub_count"],
                );
              },
              itemCount: my_catigory.length),
        ),
      ),
    );
  }
}



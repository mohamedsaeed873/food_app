// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_app/view/product/subcatigory.dart';

import '../../componants/catigory_prodact_com.dart';

class Catigory extends StatefulWidget {
  const Catigory({Key? key}) : super(key: key);

  @override
  State<Catigory> createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {
  List my_catigory = [
    {
      "cat_id": "1",
      "cat_name": "مأكولات بحرية",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "2",
      "cat_name": "مقبلات",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "3",
      "cat_name": "مشاوي",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "1",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "2",
      "cat_name": "ahmed",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "3",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'قائمة المأكولات',
          style: TextStyle(color: Colors.black),
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
                return SingleCatigory(
                    cat_id: my_catigory[index]["cat_id"],
                    cat_name: my_catigory[index]["cat_name"],
                    cat_image: my_catigory[index]["cat_image"]);
              },
              itemCount: my_catigory.length),
        ),
      ),
    );
  }
}



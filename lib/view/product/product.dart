// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../componants/single_podact_comp.dart';
import '../config.dart';

class Product extends StatefulWidget {
  final String pro_name;

  const Product({required this.pro_name});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List my_prod = [
    {
      "pro_offer": "1",
      "pro_id": "1",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "2",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "3",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "4",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "5",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "1",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "2",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "3",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "4",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_offer": "1",
      "pro_id": "5",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.pro_name,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: ListView.builder(
          itemCount: my_prod.length,
          itemBuilder: (context, index) {
            return SinglePro(
              pro_id: my_prod[index]["pro_id"],
              pro_name: my_prod[index]["pro_name"],
              pro_dec: my_prod[index]["pro_dec"],
              pro_image: my_prod[index]["pro_image"],
              pro_offer: my_prod[index]["pro_offer"],
            );
          }),
    );
  }
}



// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../componants/favorite_prodact_componants.dart';
import '../config.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

// ignore: duplicate_ignore
class _FavoriteState extends State<Favorite> {
  List my_pro = [
    {
      "pro_id": "1",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_id": "2",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_id": "3",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
      "pro_id": "4",
      "pro_name": "Food",
      "pro_dec": "qfjjkf wkifhwiffd wfkwfhifweifjwefjwef jjfjwefwefkwweof fdk",
      "pro_image":
          "https://cdn.cnn.com/cnnnext/dam/assets/200811115525-04-best-polish-foods-super-169.jpg",
    },
    {
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
        title: const Text(
          "مفضلتي",
          style: TextStyle(color: Colors.black),
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
      body: GridView.builder(
          itemCount: my_pro.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return SinglePro(
              pro_id: my_pro[index]["pro_id"],
              pro_name: my_pro[index]["pro_name"],
              pro_dec: my_pro[index]["pro_dec"],
              pro_image: my_pro[index]["pro_image"],
            );
          }),
    );
  }
}



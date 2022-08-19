import 'package:flutter/material.dart';

import '../view/config.dart';

class SinglePro extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_dec;
  final String pro_image;

  // ignore: prefer_const_constructors_in_immutables
  SinglePro(
      {Key? key,
        required this.pro_id,
        required this.pro_name,
        required this.pro_dec,
        required this.pro_image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.favorite_border,
                color: primarycolor,
              )),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.width / 2 - 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(pro_image),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            pro_name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              Text(pro_id),
              const Expanded(child: Text('')),
              Text(pro_id),
              const Icon(
                Icons.star_border,
                color: Colors.orange,
              ),
            ],
          )
        ],
      ),
    );
  }
}
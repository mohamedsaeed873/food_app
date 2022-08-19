import 'package:flutter/material.dart';

import '../view/config.dart';

class SinglePro extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_dec;
  final String pro_image;
  final String pro_offer;

  const SinglePro(
      {required this.pro_id,
        required this.pro_name,
        required this.pro_dec,
        required this.pro_image,
        required this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(pro_image), fit: BoxFit.cover)),
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pro_name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                      overflow: TextOverflow.clip,
                      text: TextSpan(children: [
                        TextSpan(
                            text: pro_dec,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.grey))
                      ]))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.favorite_border),
                checkOffer(pro_offer)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget checkOffer(String fooOffer) {
    return fooOffer == "1"
        ? Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:primarycolor,
        ),
        child: Text(
          pro_offer,
          style: const TextStyle(color: Colors.white),
        ))
        : const Text("");
  }
}
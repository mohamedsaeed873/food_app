import 'package:flutter/material.dart';

class SinglePro extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_dec;
  final String pro_image;

  const SinglePro(
      {required this.pro_id,
        required this.pro_name,
        required this.pro_dec,
        required this.pro_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
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
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            pro_dec,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

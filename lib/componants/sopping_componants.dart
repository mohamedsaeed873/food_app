import 'package:flutter/material.dart';

import '../view/config.dart';

class SigleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_dty;
  final String pro_image;

  const SigleProduct(
      {Key? key,
        required this.pro_id,
        required this.pro_name,
        required this.pro_price,
        required this.pro_dty,
        required this.pro_image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.topRight,
          child: Icon(
            Icons.cancel,
            color: Colors.red[600],
          ),
        ),
        ListTile(
          title: Text(pro_name,
              style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          subtitle: Text(pro_price),
          leading: Container(
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(pro_image), fit: BoxFit.cover)),
          ),
          trailing: SizedBox(
            width: 90,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color:primarycolor),
                    child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Text(pro_dty),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: primarycolor),
                    child: const Center(
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

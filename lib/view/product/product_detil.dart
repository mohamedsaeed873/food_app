// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/view/sopping/sopping_detil.dart';

import '../config.dart';

class ProductDetil extends StatefulWidget {
  const ProductDetil({Key? key}) : super(key: key);

  @override
  State<ProductDetil> createState() => _ProductDetilState();
}

class _ProductDetilState extends State<ProductDetil> {
  late double number_pro;

  Widget HeaderBuild() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //*********bace
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  )
                ]),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color:primarycolor,
              ),
            ),
          ),
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //*********shope
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  )
                ]),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Sopping()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color:primarycolor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ImageProduct() {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 0,
              offset: Offset(0, 1),
            )
          ]),
      child: Column(
        children: [
          Image.network(
              "https://food.fnr.sndimg.com/content/dam/images/food/products/2022/3/11/rx_goldbelly-clinton-street-diner-zeus-burger.jpg.rend.hgtvcom.406.305.suffix/1647019464547.jpeg"),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*********bace
              InkWell(
                onTap: () {
                  number_pro--;
                },
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primarycolor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: const Center(
                        child: Text(
                      "-",
                      style: TextStyle(fontSize: 45, color: Colors.white),
                    ))),
              ),
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              //*********shope
              InkWell(
                onTap: () {},
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primarycolor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: const Center(
                        child: Text(
                      "+",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ))),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            ListView(
              children: [
                ImageProduct(),
                Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "برجر",
                        style: TextStyle(fontSize: 30),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("5"),
                          Expanded(child: Text("")),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5 review",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 15)),
                      const Text(
                        " برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر  برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر  برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر برجر ",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              height: 120.0,
              left: 0.0,
              right: 0.0,
              top: 0.0,
              child: HeaderBuild(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 30, right: 50),
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            // color: Colors.orange[300],
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  primarycolor,
                  Colors.deepOrangeAccent,
                  Colors.deepOrangeAccent,
                  primarycolor,
                ]),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 7,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1500',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red[300],
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      )
                    ]),
                child: Row(
                  children: const [
                    Text(
                      "اضافه الي السلة",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

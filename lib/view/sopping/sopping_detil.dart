// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_app/view/product/catigory.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../componants/sopping_componants.dart';
import '../config.dart';
import '../order/traiking.dart';

class Sopping extends StatefulWidget {
  const Sopping({Key? key}) : super(key: key);

  @override
  State<Sopping> createState() => _SoppingState();
}

class _SoppingState extends State<Sopping> {
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
                color: primarycolor,
              ),
            ),
          ),
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //*********shope
        ],
      ),
    );
  }

  List myproduct = [
    {
      'pro_id': '1',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
    {
      'pro_id': '2',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
    {
      'pro_id': '3',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
    {
      'pro_id': '1',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
    {
      'pro_id': '2',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
    {
      'pro_id': '3',
      'pro_name': 'مشاوي',
      'pro_price': '100',
      'pro_image': 'assets/images/salad.png',
      'pro_dty': '3',
    },
  ];

  Future showSheetMessage(context) {
    return showMaterialModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                      child: const Icon(Icons.done,
                          size: 55.0, color: primarycolor)),
                  const Text(
                    "شكرا لطلبك",
                    style: TextStyle(
                        color: primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  const Text(
                    "يمكنك تتبع الطلبية من خلال الضغط على الزر في الاسفل",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: MaterialButton(
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Text("تابع الطلبية",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Tracking()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: MaterialButton(
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Text("الانتقال الى المأكولات",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.0,
                              )),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Catigory()));
                        }),
                  )
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: ListView.separated(
                itemCount: myproduct.length,
                itemBuilder: (context, index) {
                  return SigleProduct(
                    pro_id: myproduct[index]['pro_id'],
                    pro_name: myproduct[index]['pro_name'],
                    pro_price: myproduct[index]['pro_price'],
                    pro_dty: myproduct[index]['pro_dty'],
                    pro_image: myproduct[index]['pro_image'],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
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
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "المبلغ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "100",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "الديليفري",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "100",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "اجمالي المبلغ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "100",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 30, right: 50),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                // color: Colors.orange[300],
                color: primarycolor,
              ),
              child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "اضافة الي السلة",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showSheetMessage(context);
              },
              child: Container(
                alignment: Alignment.center,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40)),
                child: const Text(
                  "تأكيد الطلبية",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


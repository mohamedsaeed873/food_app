import 'package:flutter/material.dart';
import 'package:food_app/view/config.dart';
import 'package:food_app/view/tips/tips.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: myheight * 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/4e/95/ff/4e95ff2406e7914e70cbbba6dd9c51d2.jpg"),
                  fit: BoxFit.scaleDown,

                )),
          ),
          Container(
              height: myheight,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primarycolor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('اشهي الماكولات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                          '  افصل المأكولات تجدونها في مطعمناوالعديد من المأكولات فقظ ابدأ بالدخول ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white70)),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Tips()));
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                bottom: 5, top: 5, left: 30, right: 30),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'ابدأ من هنا',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}

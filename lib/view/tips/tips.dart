import 'package:flutter/material.dart';
import 'package:food_app/view/auth/login.dart';
import 'package:food_app/view/home/home.dart';
import 'package:page_indicator/page_indicator.dart';

import '../../componants/tips_componants.dart';
import '../config.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  List myarr = [
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق من هنا",
      "image":
          "https://res.cloudinary.com/glovoapp/image/fetch//f_auto,q_auto/https://glovoapp.com/images/landing/address-container-image-burger.png",
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق من هنا",
      "image": "https://cafe108knox.com/mc_content/uploads/2021/09/burger.png",
    },
    {
      "title": "ابحث عن المأكولات التي تحبها",
      "info": "افضل الاطعمه تجدها في التطبيق من هنا",
      "image":
          "https://www.pngplay.com/wp-content/uploads/2/Burger-Transparent-Free-PNG.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, right: 30),
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text(
                'تسجيل الدخول',
                style: TextStyle(
                    fontSize: 24,
                    color: primarycolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: myheight * 4,
            child: PageIndicatorContainer(
                length: myarr.length,
                shape: IndicatorShape.circle(),
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey,
                indicatorSelectorColor: primarycolor,
                child: PageView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: myarr.length,
                    itemBuilder: (context, index) {
                      return SingelTips(
                          title: myarr[index]["title"],
                          info: myarr[index]["info"],
                          image: myarr[index]["image"]);
                    })),
          ),
          Container(
              height: myheight,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primarycolor,
                      ),
                      child: const Text(
                        "انشاء حساب ",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "متابعه باستخدام الفيس بوك",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}



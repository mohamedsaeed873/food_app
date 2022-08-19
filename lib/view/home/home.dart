// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_app/view/drawer/my_drawer.dart';
import 'package:food_app/view/product/product_detil.dart';
import '../../componants/home_catigory_componants.dart';
import '../../componants/home_prodact_componants.dart';
import '../config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  List my_cat = [
    {
      "cat_id": "1",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "2",
      "cat_name": "ahmed",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "3",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "1",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "2",
      "cat_name": "ahmed",
      "cat_image": "assets/images/salad.png",
    },
    {
      "cat_id": "3",
      "cat_name": "medo",
      "cat_image": "assets/images/salad.png",
    },
  ];

  List my_pro = [
    {
      "pro_id": "1",
      "pro_name": "  دجاج مشوي",
      "pro_dec": "-إمداد البروتين يحتوي الدجاج على نسبة عالية جدًا من البروتين ، والذي يلعب دورًا مهمًا جدًا في الحفاظ على العضلات، إن تناول الدجاج أمر لا بد منه لأولئك الذين يريدون بناء القوة.- فقدان الوزنهل سبق لك أن رأيت طبقًا صحيًا من الطعام بدون بعض الدجاج؟ سبب إدراج الدجاج دائمًا في نظام غذائي صحي هو أنه لحم قليل الدهن ، مما يعني أنه لا يحتوي على الكثير من الدهون. لذا ، فإن تناول الدجاج  المشوي بانتظام يمكن أن يساعدك في الواقع على إنقاص الوزن بطريقة صحية.-صحة العظامبصرف النظر عن البروتين ، فإن الدجاج أيضًا مليء بالكالسيوم والفوسفور، كلا هذين المعدنين يساعدان في الحفاظ على صحة العظام، كما أن تناول الدجاج بانتظام يقلل من خطر الإصابة بالتهاب المفاصل.",
      "pro_image":
          "https://kitchen.sayidaty.net/uploads/small/f4/f4dd06616700c8a35cda336664339134_w750_h750.jpg",
    },
    {
      "pro_id": "2",
      "pro_name": "اللحم مشوي",
      "pro_dec": "يفضّل الكثير من الناس تناول اللحم مشويّاً، وذلك لأنّ الشوي يعتبر إحدى أهم طرق الطهو المستخدمة للمحافظة على العناصر الغذائيّة التي تتواجد بكثرة في اللحوم؛ حيث تحافظ هذه الطريقة على تواجد العناصر الغذائيّة على اختلاف أنواعها في اللحوم، بالإضافة لحصولنا عليها بالمذاق الشهي والمختلف. يُعدّ اللحم مفيداً لجميع أعضاء الجسم، وذلك لاحتوائه على عدّة عناصر لا يمكن الاستغناء عنها ومن أهمّها البروتينات",
      "pro_image":
          "https://mkaleh.com/uploads/images/image_750x_5d38230d2430b.jpg",
    },
    {
      "pro_id": "3",
      "pro_name": "كفتة مشوية",
      "pro_dec": "الكفتة بشكلها الرائع ورائحتها الشهية ومذاقها اللذيذ ستكون من المأكولات التي تطلبها عائلتك على الدوام في جميع الأوقات والمناسبات، وأما تحضيرها فهو سهل جداً ولا يحتاج الكثير من الوقت والجهد ويمكن تقديمها مع صلصة الطحينة التي تضيف للحم مذاقاً مميزاً .",
      "pro_image":
          "https://www.tareekaa.com/wp-content/uploads/2019/07/%D8%A7%D9%84%D9%83%D9%81%D8%AA%D8%A9-%D8%A7%D9%84%D9%85%D8%B4%D9%88%D9%8A%D8%A9-%D8%A8%D8%A7%D9%84%D9%81%D8%B1%D9%86.jpg"
              ,
    },
    {
      "pro_id": "4",
      "pro_name": "كبدة مشوية",
      "pro_dec": "الكبدة من الوجبات المغذية التي يحبها كل أفراد الأسرة وتقدم بعدة طرق منها  المشوية أو المقلية أو بانيه أو إسكندراني.",
      "pro_image":
          "https://www.arabianrecipe.com/wp-content/uploads/2016/10/Liver-wm3.jpg",
    },
    {
      "pro_id": "5",
      "pro_name": "طرب مشوي",
      "pro_dec":  "مع اقتراب عيد الأضحى تستعد الكثير من النساء بتحضير قائمة الطعام التى تنوى تقديمه على مائدة العيد، ولأن اللحم الضانى يكون بطل مائدة عيد الأضحى على الدوام تعتمد الكثير من أكلات العيد عليه.",

      "pro_image":
          "https://www.e7kky.com/uploads/editor/images/y0uC9ypjffBWm2KPGC84hgk6G0Ri1j8MAWWYewuA.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      endDrawer: const MyDrawer(),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetil()));
            },
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(children: [
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(right: 30),
                  child: const Text(
                    'توصيل الطلب الي',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Text(
                        'موقع الزبون',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: primarycolor,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.menu,
                          color: primarycolor,
                          size: 40,
                        ),
                        onTap: () {
                          _globalKey.currentState?.openEndDrawer();
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "بحث",
                            suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: my_cat.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SingleCat(
                              cat_id: my_cat[index]["cat_id"],
                              cat_name: my_cat[index]["cat_name"],
                              cat_image: my_cat[index]["cat_image"]);
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return SinglePro(
                              pro_id: my_pro[index]["pro_id"],
                              pro_name: my_pro[index]["pro_name"],
                              pro_dec: my_pro[index]["pro_dec"],
                              pro_image: my_pro[index]["pro_image"]);
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),
                          );
                        },
                        itemCount: my_pro.length),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: primarycolor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "الاشعارات"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
                size: 30,
              ),
              label: "العروض"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "حسابي"),
        ],
      ),
    );
  }
}

// ignore: duplicate_ignore, duplicate_ignore



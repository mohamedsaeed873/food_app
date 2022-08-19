// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:food_app/view/auth/change_password.dart';
import 'package:food_app/view/auth/my_profaile.dart';
import 'package:food_app/view/favorite/favorite.dart';
import 'package:food_app/view/order/traiking.dart';
import 'package:food_app/view/product/catigory.dart';
import 'package:food_app/view/sopping/sopping_detil.dart';

import '../config.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                'MohamedSaeed',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              accountEmail: const Text(
                'MohamedSaeed@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: primarycolor,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[100]),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'الصفحة الرئيسية',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: Icon(
                        Icons.home,
                        color: primarycolor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Catigory()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'قائمة المأكولات',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: Icon(
                        Icons.food_bank_outlined,
                        color: primarycolor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            Theme(
              data: theme,
              child: ExpansionTile(
                title: const Text(
                  "حسابي",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyProfile()));
                      },
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text(
                              "تغيير الاعدادت الشخصية",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            leading: Icon(
                              Icons.settings,
                              color: primarycolor,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChangePassword()));
                      },
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text(
                              "تغيير كلمة المرور",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            leading: Icon(
                              Icons.lock_open,
                              color: primarycolor,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey[500],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Favorite()));
                },
                child: Column(
                  children: [
                    const ListTile(
                      title: const Text(
                        'مضلاتي',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: const Icon(
                        Icons.favorite,
                        color: primarycolor,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sopping()));
                },
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'طلباتي',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: const Icon(
                        Icons.history,
                        color: primarycolor,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Tracking()));
                },
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'تتبع الطلبية',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: Icon(
                        Icons.drive_eta,
                        color: primarycolor,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const ListTile(
                      title: const Text(
                        'من نحن',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: const Icon(
                        Icons.message,
                        color: primarycolor,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        ' مركز الدعم',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      leading: const Icon(
                        Icons.phone,
                        color:primarycolor,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

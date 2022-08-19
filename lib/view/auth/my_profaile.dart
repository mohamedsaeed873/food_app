import 'package:flutter/material.dart';

import '../config.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Form(
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          "تغيير الاعدادات الشخصية",
                          style: TextStyle(fontSize: 25, color: primarycolor),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            hintText: 'الاسم الكامل',
                            border: InputBorder.none,
                          ),
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            // ignore: prefer_is_empty
                            if (val!.isEmpty || val.length < 1) {
                              return "الرجاء ادخال الاسم بالكامل";
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'البريد الالكتروني',
                            border: InputBorder.none,
                          ),
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            if (val!.isEmpty ||
                                !val.contains(".") ||
                                !val.contains("@")) {
                              return "الرجاء ادخال البريد الالكتروني";
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "كلمه المرور",
                            border: InputBorder.none,
                          ),
                          validator: (val) {
                            // ignore: prefer_is_empty
                            if (val!.isEmpty || val.length < 1) {
                              return "الرجاء ادخال كلمه المرور ";
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: " رقم الهاتف",
                            border: InputBorder.none,
                          ),
                          // ignore: body_might_complete_normally_nullable
                          validator: (val) {
                            // ignore: prefer_is_empty
                            if (val!.isEmpty || val.length < 1) {
                              return "الرجاء ادخال رقم الهاتف  ";
                            }
                          },
                        ),
                      ),
                      MaterialButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(bottom: 10, top: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: primarycolor,
                            ),
                            child: const Text(
                              'حفظ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

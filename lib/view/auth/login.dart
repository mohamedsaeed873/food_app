import 'package:flutter/material.dart';
import 'package:food_app/view/auth/signup.dart';

import '../config.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          "انشاء حساب",
                          style: TextStyle(fontSize: 25, color: primarycolor),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const Text(
                          "جديد",
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
                          validator: (val) {
                            if (val!.isEmpty || val.isEmpty) {
                              return "الرجاء ادخال الاسم بالكامل";
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'البريد الالكتروني',
                            border: InputBorder.none,
                          ),
                          validator: (val) {
                            if (val!.isEmpty ||
                                !val.contains(".") ||
                                !val.contains("@")) {
                              return "الرجاء ادخال البريد الالكتروني";
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
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "كلمه المرور",
                            border: InputBorder.none,
                          ),
                          validator: (val) {
                            if (val!.isEmpty || val.isEmpty) {
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
                          validator: (val) {
                            if (val!.isEmpty || val.isEmpty) {
                              return "الرجاء ادخال رقم الهاتف  ";
                            }
                            return null;
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
                              'تسجيل',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'اذا لديك حساب قم بتسجيل الدخول',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SignUp()));
                              },
                              child: const Text(
                                'تسجيل دخول',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      )
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

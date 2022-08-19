import 'package:flutter/material.dart';

import '../config.dart';

// ignore: camel_case_types
class Frog_pass extends StatefulWidget {
  const Frog_pass({Key? key}) : super(key: key);

  @override
  State<Frog_pass> createState() => _Frog_passState();
}

// ignore: camel_case_types
class _Frog_passState extends State<Frog_pass> {
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
                          "نسيت كلمه المرور",
                          style: TextStyle(fontSize: 25, color: primarycolor),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          " قم بادخال الايميل الصحيح ليتم ارسال كلمه المرور اليك",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                              'ارسال',
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

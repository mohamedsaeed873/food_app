import 'package:flutter/material.dart';
import 'package:food_app/view/auth/frogetpassword.dart';
import 'package:food_app/view/auth/login.dart';


import '../config.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                          " تسجيل الدخول",
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
    alignment: Alignment.bottomRight,
    child: TextButton(onPressed: (){},child: const Text('هل نسيت كلمة السر؟' ,style:  TextStyle(color: primarycolor , fontSize: 16),),),
  ),

                      MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Frog_pass()));
                          },
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
                              'تسجيل الدخول',
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
                              'اذا لم يكن لديك حساب قم بأنشاء حساب',
                              style:
                              TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()));
                              },
                              child: const Text(
                                'تسجيل ',
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

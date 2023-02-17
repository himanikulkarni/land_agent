import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:land_agent/home.dart';
import 'package:http/http.dart' as http;
import 'package:land_agent/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String remark = "";

  Future<http.Response> getConnectionStatus() async {
    final response = await http.get(
      Uri.parse(
        "https://land-agent.in/app_request/external_access/Login",
      ),
    );
    log("Response : ${response.body}");
    setState(() {
      remark = jsonDecode(response.body)["remarks"];
    });
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 200.h,
                  width: 380.w,
                  child: Image.asset(
                    'assets/home.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Sell your properties faster than \n ever!',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 100, 98, 98),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.w,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(Icons.email_outlined),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.w,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(Icons.lock_outline),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 160.h,
                    ),
                    Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () async {
                    await getConnectionStatus();
                    if (remark == '') {
                      log(remark);
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const home()),
                      );
                    }
                  },
                  child: Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120.w,
                        ),
                        Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Don't you have an account?",
                      style: TextStyle(fontSize: 17.sp, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text(
                        'Signup here',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

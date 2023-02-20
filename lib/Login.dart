import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/register.dart';
import 'package:land_agent/widget/custom_textfields.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  Future<void> _sendData() async {
    log(emailController.text);
    var map = <String, dynamic>{};
    map['enc_string'] = "Buisjnf123s";
    map['email'] = emailController.text;
    map['pass'] = passController.text;
    final url =
        Uri.parse('https://land-agent.in/app_request/external_access/Login');
    final response = await http.post(
      url,
      body: map,
    );

    if (response.statusCode == 200) {
      final responseBody = response.body;
      print('Response: $responseBody');
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    dW = MediaQuery.of(context).size.width;
    dH = MediaQuery.of(context).size.height;
    tS = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: dW * 0.7,
              child: Image.asset(
                'assets/building.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: dH * 0.08),
            Text(
              'Sign in',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: tS * 35,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Sell your properties faster than ever!',
              style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: tS * 15,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: dW * 0.06),
            CustomTextField(
              controller: emailController,
              hintText: "Email",
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Container(
                  width: dH * 0.06,
                  height: dH * 0.06,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 198, 137),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: const Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: dW * 0.05),
            CustomTextField(
              controller: passController,
              hintText: "Password",
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Container(
                  width: dH * 0.06,
                  height: dH * 0.06,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 198, 137),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: const Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: dW * 0.04),
            Padding(
              padding: EdgeInsets.only(left: dW * 0.75),
              child: Container(
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.poppins(
                      color: Colors.orange,
                      decoration: TextDecoration.underline,
                      fontSize: tS * 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(height: dW * 0.05),
            Container(
              width: dW * 0.9,
              height: dH * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  _sendData();
                },
                // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 252, 133, 59),
                    elevation: 0.0,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: dW * 0.03),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?  ",
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: tS * 13,
                        fontWeight: FontWeight.normal),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: Text(
                      'Signup here',
                      style: GoogleFonts.poppins(
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          fontSize: tS * 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(width: dW * 0.025),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController brokername = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
                width: double.infinity,
                child: Image.asset(
                  'assets/building.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                'Create an Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'An unique portal only for land brokers to connect with\none another.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40.h,
                      child: TextField(
                        controller: brokername,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          labelText: 'Name',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                        width: 250.w, height: 50.h, child: const Realtor()),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                        width: 250.w, height: 50.h, child: const District()),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.call_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40.h,
                      child: TextField(
                        controller: mobile,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          labelText: 'Mobile',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40.h,
                      child: TextField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          labelText: 'Email',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 50.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 185, 184, 184)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7.w,
                    ),
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 198, 137),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: const Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40.h,
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  registerUser();
                },
                child: Container(
                  width: 310.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 133, 59),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 120.w,
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'By registering you agree to the broker',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Terms of use & conditions',
                style: TextStyle(
                    color: const Color.fromARGB(255, 236, 162, 65),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 45.w,
                  ),
                  Text(
                    'Already registered?',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 104, 104, 104),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Sign-in here',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 236, 162, 65),
                        fontSize: 16.sp,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registerUser() async {
    var url = "https://land-agent.in/app_request/external_access/Register";
    var data = {
      "brokername": brokername.text,
      "email": email.text,
      "mobile": mobile.text,
      "password": password.text
    };
    var bodyy = json.encode(data);
    var urlParse = Uri.parse(url);
    Response response = await http.post(
      urlParse,
      body: bodyy,
    );
    var dataa = jsonDecode(response.body);
    print(dataa);
  }
}

class Realtor extends StatefulWidget {
  const Realtor({super.key});

  @override
  _RealtorState createState() => _RealtorState();
}

class _RealtorState extends State<Realtor> {
  List<String> items = ['Realtors', 'Builder'];
  String? selectedItem = 'Realtors';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          width: 290.w,
          height: 50.h,
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600)),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item),
          ),
        ),
      );
}

class District extends StatefulWidget {
  const District({super.key});

  @override
  _DistrictState createState() => _DistrictState();
}

class _DistrictState extends State<District> {
  List<String> items = [
    'Select your district',
    'Ariyalur',
    'Chengalpattu',
    'Chennai',
    'Coimbatore',
    'Cuddalore',
    'Dharmapuri',
    'Dindigul',
    'Erode',
    'Kallakurichi'
  ];
  String? selectedItem = 'Select your district';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          width: 290.w,
          height: 50.h,
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent))),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600)),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item),
          ),
        ),
      );
}

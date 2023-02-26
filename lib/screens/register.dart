import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:land_agent/models/district_list_model.dart';
import 'package:land_agent/widget/custom_textfields.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController broker_nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

  Future<void> _sendData() async {
    log(emailController.text);
    var map = <String, dynamic>{};
    map['enc_string'] = "Buisjnf123s";
    map['email'] = emailController.text;
    map['pass'] = passController.text;
    map['broker_name'] = broker_nameController.text;
    map['mobile'] = mobileController.text;

    final url =
        Uri.parse('https://land-agent.in/app_request/external_access/Register');
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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: dW * 0.7,
              child: Image.asset(
                'assets/building.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: dH * 0.05),
            Container(
              child: Text(
                'Create an account',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: tS * 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: dH * 0.02),
            Padding(
              padding: EdgeInsets.only(left: dW * 0.05, right: dW * 0.05),
              child: Center(
                child: Text(
                  'An Unique Portal only for Land Brokers to connect with one another.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: tS * 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: dH * 0.03),
            CustomTextField(
              controller: broker_nameController,
              hintText: "Name",
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Container(
                  width: dH * 0.06,
                  height: dH * 0.06,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 198, 137),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: dH * 0.02),
            Container(
              width: dW * 0.9,
              height: dH * 0.08,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 185, 184, 184)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  SizedBox(
                    width: dW * 0.02,
                  ),
                  Container(
                    width: dH * 0.06,
                    height: dH * 0.06,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 198, 137),
                        borderRadius: BorderRadius.circular(7.0)),
                    child: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: dW * 0.025,
                  ),
                  SizedBox(
                      width: dW * 0.7,
                      height: dH * 0.08,
                      child: const Realtor()),
                ],
              ),
            ),
            SizedBox(height: dH * 0.02),
            Container(
              width: dW * 0.9,
              height: dH * 0.08,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 185, 184, 184)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  SizedBox(
                    width: dW * 0.02,
                  ),
                  Container(
                    width: dH * 0.06,
                    height: dH * 0.06,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 198, 137),
                        borderRadius: BorderRadius.circular(7.0)),
                    child: const Icon(
                      Icons.location_pin,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: dW * 0.025,
                  ),
                  SizedBox(
                    width: dW * 0.7,
                    height: dH * 0.08,
                    child: const District(),
                  ),
                ],
              ),
            ),
            SizedBox(height: dH * 0.03),
            CustomTextField(
              controller: mobileController,
              hintText: "Mobile",
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: Container(
                  width: dH * 0.06,
                  height: dH * 0.06,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 198, 137),
                      borderRadius: BorderRadius.circular(7.0)),
                  child: const Icon(
                    Icons.call_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: dH * 0.03),
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
            SizedBox(height: dH * 0.03),
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
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
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
                  'REGISTER',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: dW * 0.02),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By registering you agree to the broker\n",
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: tS * 12,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms of Use and Conditions',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: tS * 12,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: dW * 0.05),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already registered?  ",
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
                      'Sign-in here',
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

class Realtor extends StatefulWidget {
  const Realtor({super.key});

  @override
  _RealtorState createState() => _RealtorState();
}

class _RealtorState extends State<Realtor> {
  List<String> items = ['Realtors', 'Builder'];
  String? selectedItem1 = 'Realtors';

  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

  Future<void> _sendData() async {
    var map = <String, dynamic>{};

    map['register_type'] = selectedItem1;

    final url =
        Uri.parse('https://land-agent.in/app_request/external_access/Register');
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
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: dW * 0.7,
        height: dH * 0.08,
        child: DropdownButtonFormField<String>(
          isExpanded: true,
          decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))),
          value: selectedItem1,
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: tS * 18,
                            fontWeight: FontWeight.w600)),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedItem1 = item),
        ),
      ),
    );
  }
}

class District extends StatefulWidget {
  const District({super.key});

  @override
  _DistrictState createState() => _DistrictState();
}

class _DistrictState extends State<District> {
  List<String> items = [];
  List<String> items_append = [];
  String selectedDisctrict = "";
  String selectedid = "";

  DistrictListModel? districtListModel;

  Future<http.Response> getDistrictList() async {
    final response = await http.get(
      Uri.parse(
        "https://land-agent.in/app_request/external_access/District-List",
      ),
    );
    districtListModel = districtListModelFromJson(response.body);

    for (var element in districtListModel!.data) {
      items.add(
        element.districtName,
      );
    }
    selectedDisctrict = items.first;
    setState(() {});

    return response;
  }

  String? selectedItem = 'Select your district';

  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

  Future<void> _sendData() async {
    var map = <String, dynamic>{};

    map['district'] = selectedid;

    final url =
        Uri.parse('https://land-agent.in/app_request/external_access/Register');
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
  void initState() {
    super.initState();
    getDistrictList();
  }

  @override
  Widget build(BuildContext context) {
    dW = MediaQuery.of(context).size.width;
    dH = MediaQuery.of(context).size.height;
    tS = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: dW * 0.7,
        height: dH * 0.08,
        child: DropdownButtonFormField<String>(
          isExpanded: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
          value: selectedDisctrict,
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: tS * 18,
                            fontWeight: FontWeight.w600)),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedDisctrict = item!),
        ),
      ),
    );
  }
}

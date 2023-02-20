import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

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
            SizedBox(height: dW * 0.08),
            Container(
              child: Text(
                'Create an account',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: tS * 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: dW * 0.05, right: dW * 0.05),
              child: Center(
                child: Text(
                  'An Unique Portal only for Land Brokers to connect with one another.',
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: tS * 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            SizedBox(height: dW * 0.06),
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: dH * 0.01, top: dH * 0.01, bottom: dH * 0.01),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: dH * 0.01,
                      right: dH * 0.01,
                      bottom: dH * 0.0001,
                      top: dH * 0.005,
                    ),
                    child: SizedBox(
                      height: dH * 0.03,
                      width: dH * 0.2,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.grey,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: tS * 18,
                              fontWeight: FontWeight.w600),
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none,
                          labelText: 'Name',
                          labelStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: tS * 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: dW * 0.06),
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: dH * 0.01, top: dH * 0.01, bottom: dH * 0.01),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: dH * 0.01,
                      right: dH * 0.01,
                      bottom: dH * 0.0001,
                      top: dH * 0.005,
                    ),
                    child: SizedBox(
                        height: dH * 0.07,
                        width: dH * 0.4,
                        child: const Realtor()),
                  ),
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
  String? selectedItem = 'Realtors';

  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

  @override
  Widget build(BuildContext context) {
    dW = MediaQuery.of(context).size.width;
    dH = MediaQuery.of(context).size.height;
    tS = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        height: dH * 0.06,
        width: dH * 0.4,
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
                            fontSize: tS * 18,
                            fontWeight: FontWeight.w600)),
                  ))
              .toList(),
          onChanged: (item) => setState(() => selectedItem = item),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      required this.controller});
  final Widget? prefixIcon;
  final String hintText;
  final TextEditingController controller;

  double dW = 0.0;
  double dH = 0.0;
  double tS = 0.0;

  @override
  Widget build(BuildContext context) {
    dW = MediaQuery.of(context).size.width;
    dH = MediaQuery.of(context).size.height;
    tS = MediaQuery.of(context).textScaleFactor;
    return SizedBox(
      width: dW * 0.9,
      height: dH * 0.08,
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.grey,
            fontSize: tS * 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          ),
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.grey,
              fontSize: tS * 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

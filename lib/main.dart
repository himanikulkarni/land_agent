import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const Login(),
    );
  }
}

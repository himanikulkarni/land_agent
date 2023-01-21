import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/home.dart';

void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const Login(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  )
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
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const home()),
                );
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
                Text(
                  'Signup here',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

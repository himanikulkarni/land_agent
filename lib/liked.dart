import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const liked());
}

class liked extends StatelessWidget {
  const liked({super.key});

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
          home: const Liked(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Text(
              'Liked Properties',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 70.w,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 40.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 229, 191),
                    borderRadius: BorderRadius.circular(7.0)),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Color.fromARGB(255, 223, 134, 0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              Container(
                width: 50.w,
                height: 45.h,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(
                width: 20.h,
              ),
              Text(
                'Gokul Resolutions \nPvt. Ltd.',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.location_pin,
                color: Color.fromARGB(255, 121, 120, 120),
              ),
              const Text('   Arumbakkam, Chennai')
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.currency_rupee,
                color: Color.fromARGB(255, 121, 120, 120),
                size: 20,
              ),
              const Text('2    Area: 2195 sqft')
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              Text(
                'Property is in Annanagar vacant\nland total extent 5000sqft price\n@10cr',
                style: TextStyle(fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.h,
              ),
              Container(
                width: 300.w,
                height: 250.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(7.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 229, 191),
                      borderRadius: BorderRadius.circular(18.r)),
                  child: const Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 223, 134, 0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

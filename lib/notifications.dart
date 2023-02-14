import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/home.dart';

void main() {
  runApp(const notifications());
}

class notifications extends StatelessWidget {
  const notifications({super.key});

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
          home: const Notifications(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
                child: const Icon(Icons.arrow_back, color: Colors.black)),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600),
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
                width: 20.w,
              ),
              Text(
                'This year',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                width: 50.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                '27 days ago',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                'Your property is approved...',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                width: 50.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                '27 days ago',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                'Your property is approved...',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                width: 50.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                '27 days ago',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                'Your property is approved...',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                width: 50.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                '27 days ago',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                'Your property is approved...',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                width: 50.w,
                height: 45.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  'assets/home.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                '27 days ago',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              subtitle: Text(
                'Your property is approved...',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

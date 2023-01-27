import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/home.dart';
import 'package:land_agent/liked.dart';
import 'package:land_agent/search.dart';
import 'package:land_agent/settings.dart';

void main() {
  runApp(const profile());
}

class profile extends StatelessWidget {
  const profile({super.key});

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
          home: const Profile(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          children: [
            Text(
              'Your Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 120.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const settings()),
                );
              },
              child: Container(
                width: 40.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 229, 191),
                    borderRadius: BorderRadius.circular(7.0)),
                child: const Icon(
                  Icons.settings_outlined,
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
                width: 20.w,
              ),
              Column(
                children: [
                  Text(
                    'PVR Realtor',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Chennai',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                width: 100.w,
              ),
              Container(
                width: 90.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 229, 191),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'About me',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Write something about yourself\nor your expectations',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 320.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 86, 25, 255),
                borderRadius: BorderRadius.circular(7.0)),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      '         0',
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    ),
                    Text(
                      '         0',
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    ),
                    Text(
                      '         0',
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      '   Properties',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                    Text(
                      '  Following',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                    Text(
                      '  Followers',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 320.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 183, 81),
                borderRadius: BorderRadius.circular(7.0)),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Text(
                      '      Approved(0)',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                    Text(
                      '      Pending(0)',
                      style: TextStyle(color: Colors.black, fontSize: 20.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      '                      Rejected(0)',
                      style: TextStyle(color: Colors.black, fontSize: 20.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(context),
    );
  }
}

Widget NavBar(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 60.h,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [BoxShadow(blurRadius: 5.r, color: Colors.grey)],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const home()),
              );
            },
            child: const Icon(
              Icons.home,
              color: Colors.grey,
              size: 30,
            ),
          ),
          SizedBox(
            width: 27.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const search()),
              );
            },
            child: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 134, 0),
                borderRadius: BorderRadius.circular(5.0)),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 40.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const liked()),
              );
            },
            child: const Icon(
              Icons.thumb_up_outlined,
              color: Colors.grey,
              size: 30,
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profile()),
              );
            },
            child: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}

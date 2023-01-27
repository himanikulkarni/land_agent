import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/create_ppty.dart';
import 'package:land_agent/liked.dart';
import 'package:land_agent/notifications.dart';
import 'package:land_agent/profile.dart';
import 'package:land_agent/search.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

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
          home: const Home(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Text(
              'Home',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 170.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const notifications()),
                );
              },
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
                '3BHK residential villa in Koyembedu',
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
                    Icons.favorite_outline,
                    color: Color.fromARGB(255, 223, 134, 0),
                  ),
                ),
              ),
            ],
          )
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const create_ppty()),
              );
            },
            child: Container(
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

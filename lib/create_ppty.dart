import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/home.dart';
import 'package:land_agent/ppty_img.dart';

class create_ppty extends StatelessWidget {
  const create_ppty({super.key});

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
          home: const Create_ppty(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Create_ppty extends StatelessWidget {
  const Create_ppty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10.h,
            ),
            Text(
              'Create Property',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 12.w,
            ),
            Container(
              width: 80.w,
              height: 35.h,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 115, 60, 255),
                  borderRadius: BorderRadius.circular(7.0)),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      const Text('POST'),
                    ],
                  ),
                ],
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
                width: 25.w,
              ),
              CircleAvatar(
                radius: 35.r,
                backgroundColor: Colors.yellow,
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                'PVR Realtor',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 105.w,
              ),
              Container(
                width: 65.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    const Icon(Icons.location_pin),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Container(
                width: 65.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Rs.0',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Container(
                width: 75.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '0 sqft',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Do you have anything\nto say about the \nproperty?',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 220.h,
          ),
          const Divider(),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                '0 images has been selected',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ppty_img()),
              );
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  const Icon(
                    Icons.image,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Select Property Image',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

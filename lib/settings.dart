import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:land_agent/profile.dart';

void main() {
  runApp(const settings());
}

class settings extends StatelessWidget {
  const settings({super.key});

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
          home: const Settings(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

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
                  MaterialPageRoute(builder: (context) => const profile()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Settings',
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
            height: 25.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.verified_user_outlined,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 155.w,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.info_outline,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'About',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 195.w,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.mail_outline,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Mail us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 185.w,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.privacy_tip_outlined,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.h,
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 112.w,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.h,
              ),
              const Icon(
                Icons.note_add_outlined,
                color: Colors.orange,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Terms',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 195.w,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 250.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          'Do you want to log out?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          width: 80.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.w, color: Colors.orange),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7.0)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 25.w,
                                  ),
                                  Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          width: 180.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(7.0)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  Text(
                                    'Yes, Logout',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.h,
                  ),
                  const Icon(
                    Icons.verified_user_outlined,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 190.w,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

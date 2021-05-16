import 'package:flutter/material.dart';
import 'package:flutter_booking_villa_app/BookingVilla/signinpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () =>
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: BookingVillaSignInPage(),
          ),
    );
  }
}

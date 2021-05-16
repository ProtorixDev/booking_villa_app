import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 750),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BookingVillaSignInPage(),
      ),
    );
  }
}

class BookingVillaSignInPage extends StatefulWidget {

  @override
  _BookingVillaSignInPageState createState() => _BookingVillaSignInPageState();
}

class _BookingVillaSignInPageState extends State<BookingVillaSignInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: ScreenUtil().setHeight(300.0),
            width: double.infinity,
            color: Color(0xff051BE0),
            child: Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(70.0),
                left: ScreenUtil().setWidth(20.0),
              ),
              child: Text("BookingVilla",
              style: GoogleFonts.montserratAlternates(
                color: Colors.white,
                fontSize: ScreenUtil().setSp(20.0),
                fontWeight: FontWeight.w600
              )),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(200.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(30.0),
                      left: ScreenUtil().setWidth(20.0),
                    ),
                    child: Text("Sign in",
                        style: GoogleFonts.montserratAlternates(
                            color: Color(0xff051BE0),
                            fontSize: ScreenUtil().setSp(26.0),
                            fontWeight: FontWeight.w600
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(30.0),
                      bottom: ScreenUtil().setHeight(10.0),
                      left: ScreenUtil().setWidth(20.0),
                    ),
                    child: Text("Email",
                        style: GoogleFonts.montserratAlternates(
                            color: Color(0xff051BE0),
                            fontSize: ScreenUtil().setSp(14.0),
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0)
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[50].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(15.0),
                          vertical: ScreenUtil().setHeight(5.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.mail_outline, color: Colors.black, size: ScreenUtil().setHeight(20.0),),
                            SizedBox(width: ScreenUtil().setWidth(10.0),),
                            Expanded(
                              child: TextField(
                                cursorColor: Colors.red,
                                style: GoogleFonts.montserratAlternates(
                                    decoration: TextDecoration.none,
                                    fontSize: ScreenUtil().setSp(12.0),
                                    color: Colors.black
                                ),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: ScreenUtil().setSp(12.0),
                                      color: Colors.grey
                                  ),
                                  hintText: 'hello@gmail.com',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(30.0),
                      bottom: ScreenUtil().setHeight(10.0),
                      left: ScreenUtil().setWidth(20.0),
                    ),
                    child: Text("Password",
                        style: GoogleFonts.montserratAlternates(
                            color: Color(0xff051BE0),
                            fontSize: ScreenUtil().setSp(14.0),
                            fontWeight: FontWeight.w500
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(20.0)
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[50].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(15.0),
                          vertical: ScreenUtil().setHeight(5.0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.lock_outline, color: Colors.black, size: ScreenUtil().setHeight(20.0),),
                            SizedBox(width: ScreenUtil().setWidth(10.0),),
                            Expanded(
                              child: TextField(
                                cursorColor: Colors.red,
                                style: GoogleFonts.montserratAlternates(
                                    decoration: TextDecoration.none,
                                    fontSize: ScreenUtil().setSp(12.0),
                                    color: Colors.black
                                ),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: ScreenUtil().setSp(12.0),
                                      color: Colors.grey
                                  ),
                                  hintText: '************',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(15.0),
                      bottom: ScreenUtil().setHeight(30.0),
                      left: ScreenUtil().setWidth(20.0),
                    ),
                    child: Text("Forget your Password?",
                        style: GoogleFonts.montserratAlternates(
                            color: Colors.grey,
                            fontSize: ScreenUtil().setSp(12.0),
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20.0)
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff051BE0), width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.transparent
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: ScreenUtil().setHeight(10.0)
                        ),
                        child: Center(
                          child: Text("Sign In",
                          style: GoogleFonts.montserratAlternates(
                            color: Color(0xff051BE0),
                            fontSize: ScreenUtil().setSp(14.0),
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(15.0)
                    ),
                    child: Center(
                      child: Text("- OR -",
                          style: GoogleFonts.montserratAlternates(
                              color: Colors.grey,
                              fontSize: ScreenUtil().setSp(14.0),
                              fontWeight: FontWeight.w500
                          )),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(15.0),
                            vertical: ScreenUtil().setHeight(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/google.png", fit: BoxFit.cover, height: ScreenUtil().setHeight(24.0),),
                              SizedBox(height: ScreenUtil().setHeight(10.0),),
                              Text("Google",
                                  style: GoogleFonts.montserratAlternates(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12.0),
                                      fontWeight: FontWeight.w500
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(20.0),),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(10.0),
                            vertical: ScreenUtil().setHeight(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/apple.png", fit: BoxFit.cover, height: ScreenUtil().setHeight(24.0),),
                              SizedBox(height: ScreenUtil().setHeight(10.0),),
                              Text("Apple ID",
                                  style: GoogleFonts.montserratAlternates(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12.0),
                                      fontWeight: FontWeight.w500
                                  )),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenUtil().setHeight(20.0)
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: GoogleFonts.montserratAlternates(
                                color: Colors.grey,
                                fontSize: ScreenUtil().setSp(14.0)
                            ),
                            children: <TextSpan>[
                              TextSpan(text: ' SIGN UP',
                                  style: GoogleFonts.montserratAlternates(
                                      color: Color(0xff051BE0),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(14.0)),
                              )
                            ]
                        ),
                      ),
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
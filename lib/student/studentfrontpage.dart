// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/Game_Front_Page.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/studentlessons.dart';
import 'package:iassist/student/games/Game_Front_Page.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../selectionpage.dart';

class StudentFrontPage extends StatefulWidget {
  @override
  _StudentFrontPageState createState() => _StudentFrontPageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _StudentFrontPageState extends State<StudentFrontPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'STUDENT MODE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFBA494B),
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded, color: Color(0xFFBA494B)),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SelectionPage(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 3.5.w)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical! * 100,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.safeBlockVertical! * 16,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/header.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.9),
                          spreadRadius: 4,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.108,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          height: SizeConfig.safeBlockVertical! * 70,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.8),
                                // spreadRadius: 4,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.h),
                          height: SizeConfig.safeBlockVertical! * 15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image:
                                  AssetImage('assets/images/StudentHeader.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: EdgeInsets.only(
                            top: 20.h,
                          ),
                          child: Text(
                            'Hello Student',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: EdgeInsets.only(top: 24.h),
                          child: Text(
                            'You can read the lessons first and then\nplay games!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Color(0xFFFFB79D),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 35,
                              left: 20.w,
                              right: 20.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StudentLessons(),
                                ),
                              );
                            },
                            icon: Icon(MyFlutterApp.lessons,
                                color: Color(0xFFBA494B), size: 37.sp),
                            label: Text("LESSONS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 20.sp,
                                )),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2.5,
                                color: Color(0xFFBA494B),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: EdgeInsets.only(
                                  left: 3.w,
                                  right: 3.w,
                                  top: 2.5.h,
                                  bottom: 2.5.h),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 51,
                              left: 20.w,
                              right: 20.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GameFrontPage(),
                                ),
                              );
                            },
                            icon: Icon(MyFlutterApp.games,
                                color: Color(0xFFBA494B), size: 37.sp),
                            label: Text("GAMES",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 20.sp,
                                )),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: 2.5,
                                color: Color(0xFFBA494B),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: EdgeInsets.only(
                                  right: 2.w, top: 2.5.h, bottom: 2.5.h),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

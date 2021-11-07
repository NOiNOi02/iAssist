// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';
import '../studentlessons.dart';
import '1stLaw/Friction.dart';
import '1stLaw/balancedForces.dart';
import '1stLaw/fluidFriction.dart';
import '1stLaw/inertia.dart';
import '1stLaw/lawOfIntertia.dart';
import '1stLaw/rollingFriction.dart';
import '1stLaw/slidingFriction.dart';
import '1stLaw/staticFriction.dart';
import '1stLaw/unbalancedForces.dart';

class FirstNewtonLaw extends StatefulWidget {
  @override
  _FirstNewtonLawState createState() => _FirstNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _FirstNewtonLawState extends State<FirstNewtonLaw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'FIRST LAW OF MOTION',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFBA494B),
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentLessons(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 3.5.w)],
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          height: SizeConfig.safeBlockVertical! * 105,
          child: Stack(children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical! * 10,
              child: Center(
                child: Text(
                  "NEWTON'S LAW OF MOTION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: Color(0xFFBA494B),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              // margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
              height: SizeConfig.safeBlockVertical! * 45,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sir Isaac Newton (1643-1727) is an English physicist and mathematician known for his discoveries in Optics and his formulation of the three laws of motions which become the basic principles of the modern physics. Newton published these laws of motion in 1687 in his book ‘Principia Mathematica’. His discoveries led to scientific revolution that led to the fundamental understanding of how bodies move through physical space.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 11.sp,
                    letterSpacing: 1.4,
                  ),
                ),
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              height: SizeConfig.safeBlockVertical! * 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Newton's First Law of Motion",
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Color(0xFF747474),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 41.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LawOfInertia(),
                    ),
                  );
                },
                child: Container(
                  // margin: EdgeInsets.only(top: 1.h),
                  // padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        // width: SizeConfig.safeBlockHorizontal! * 0.1,
                        color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Law of Inertia",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              height: SizeConfig.safeBlockVertical! * 96,
              // margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Notes in Law of Intertia",
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Color(0xFF747474),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 49.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Inertia(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                        // width: 1.0,
                        color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Inertia",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 55.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BalancedForces(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Balance Forces",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 61.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UnbalancedForces(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Unbalance Forces",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 67.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Friction(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Friction",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 46.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Types of Friction",
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: Color(0xFF747474),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 76.5.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SlidingFriction(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Sliding Friction",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 13.sp)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 82.5.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StaticFriction(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Static Friction",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 88.5.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RollingFriction(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Rolling Friction",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 5.w, right: 5.w, top: 94.5.h, bottom: 5.h),
              height: SizeConfig.safeBlockVertical! * 5,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FluidFriction(),
                    ),
                  );
                },
                child: Container(
                  // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // width: size.width * .9,
                  // margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom:
                        BorderSide(color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Fluid Friction",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFBA494B),
                              fontSize: 13.sp,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ])),
    );
  }
}

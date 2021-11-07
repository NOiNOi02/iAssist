// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, override_on_non_overriding_member, use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, file_names

import 'package:flutter/material.dart';
import 'package:iassist/fade_transition.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../studentlessons.dart';
import '2ndLaw/acceleration.dart';
import '2ndLaw/circularMotionAndNewtonsSecondLawOfMotion.dart';
import '2ndLaw/freeFallAndNewtonsSecondLawOfMotion.dart';
import '2ndLaw/lawOfAcceleration.dart';
import '2ndLaw/massAndAcceleration.dart';
import '2ndLaw/netForceAndAcceleration.dart';
import '2ndLaw/sampleMathematicalProblem.dart';
import '2ndLaw/unitOfForce.dart';

class SecondNewtonLaw extends StatefulWidget {
  @override
  _SecondNewtonLawState createState() => _SecondNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SecondNewtonLawState extends State<SecondNewtonLaw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'SECOND LAW OF MOTION',
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
          onPressed: () => Navigator.of(context).push(CustomPageRoute(StudentLessons())),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 2.5.w)],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2.h, bottom:1.h),
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w, top:2.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newton's Second Law of Motion",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF747474),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LawOfAcceleration(),
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
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: Text("Law of Acceleration",
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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Notes in Law of Acceleration",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF747474),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Acceleration(),
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
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: Text("Acceleration",
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Relationship of ",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF747474),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NetForceAndAcceleration(),
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
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: Text("Net Force and Acceleration",
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MassAndAcceleration(),
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
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: Text("Mass and Acceleration",
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UnitOfForce(),
                      ),
                    );
                  },
                  child: Container(
                    // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // width: size.width * .9,
                    margin: EdgeInsets.only(left: 6.2.w),

                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          // margin: const EdgeInsets.only(),
                          child: Text("- Units of Force",
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SampleMathematicalProblem(),
                      ),
                    );
                  },
                  child: Container(
                    // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // width: size.width * .9,
                    // margin: const EdgeInsets.only(top: 8, left: 35.0),
                    margin: EdgeInsets.only(left: 6.2.w),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          // margin: const EdgeInsets.only(),
                          child: Text("- Sample Mathematical Problem",
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
                margin: EdgeInsets.only(left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FreeFallAndNewtonsSecondLawOfMotion(),
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
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.w),
                          child: Text(
                              "Free Fall and Newton's Second Law of Motion",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 11.sp,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 5.w, right: 5.w,),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CircularMotionAndNewtonsSecondLawOfMotion(),
                      ),
                    );
                  },
                  child: Container(
                    // padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // width: size.width * .9,
                    // margin: const EdgeInsets.only(top: 8, left: 35.0),
                    margin: EdgeInsets.only(left: 6.2.w, bottom: 2.h),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          color: Color(0xFFBA494B).withOpacity(0.47)),
                    )),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                        ),
                        Container(
                          // margin: const EdgeInsets.only(),
                          child: Text(
                              "- Circular Motion and Newton’s Second Law of Motion",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 9.4.sp,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            
      ])),
    );
  }
}

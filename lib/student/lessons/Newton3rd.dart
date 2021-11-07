// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../studentlessons.dart';
import '3rdLaw/actionForceAndReactionForce.dart';
import '3rdLaw/exampleOfBalancedForce.dart';
import '3rdLaw/interactionForcesVsBalancedForces.dart';
import '3rdLaw/lawOfInteraction.dart';

class ThirdNewtonLaw extends StatefulWidget {
  @override
  _ThirdNewtonLawState createState() => _ThirdNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ThirdNewtonLawState extends State<ThirdNewtonLaw> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'THIRD LAW OF MOTION',
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
              margin: EdgeInsets.only(top:2.h, bottom: 1.h),
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
              margin: EdgeInsets.only(left: 5.w,right: 5.w,top: 2.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Newton's Third Law of Motion",
                  style: TextStyle(
                    fontSize: 9.sp,
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
                      builder: (context) => LawOfInteraction(),
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
                        child: Text("Law of Interaction",
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
                  "Notes in Law of Interaction",
                  style: TextStyle(
                    fontSize: 9.sp,
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
                      builder: (context) => ActionForceAndReactionForce(),
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
                        child: Text("Action Force and Reaction Force",
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
                      builder: (context) => InteractionForcesVsBalancedForces(),
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
                        child: Text("Interaction Forces vs Balanced Forces",
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
                  left: 5.w, right: 5.w,),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExampleOfBalancedForce(),
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
                        width: 1.0, color: Color(0xFFBA494B).withOpacity(0.47)),
                  )),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Text("Example of Balance Force",
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
      ])),
    );
  }
}

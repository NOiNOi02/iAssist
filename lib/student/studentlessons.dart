// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/lessons/Newton1st.dart';
import 'package:iassist/student/lessons/Newton2nd.dart';
import 'package:iassist/student/lessons/Newton3rd.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import 'studentfrontpage.dart';

class StudentLessons extends StatefulWidget {
  @override
  _StudentLessonsState createState() => _StudentLessonsState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _StudentLessonsState extends State<StudentLessons>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              builder: (context) => StudentFrontPage(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 3.5.w)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height,
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
                          blurRadius: 7,
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
                          margin: EdgeInsets.symmetric(horizontal: 11.w),
                          height: SizeConfig.safeBlockVertical! * 69,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                // spreadRadius: 4,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.w),
                          height: SizeConfig.safeBlockVertical! * 16,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/images/StudentLessonsPic.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          margin: EdgeInsets.only(
                            top: 18.5.h,
                          ),
                          child: Text(
                            'Newton’s\nLaw of Motion',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.sp,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 30,
                              left: 20.w,
                              right: 20.w),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FirstNewtonLaw(),
                                ),
                              );
                            },
                            child: Text("1st Law of Motion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 16.sp,
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
                                  left: 2.5.w,
                                  right: 2.5.w,
                                  top: 2.5.h,
                                  bottom: 2.5.h),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 43,
                              left: 20.w,
                              right: 20.w),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondNewtonLaw(),
                                ),
                              );
                            },
                            child: Text("2nd Law of Motion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 16.sp,
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
                                  left: 2.5.w,
                                  right: 2.5.w,
                                  top: 2.5.h,
                                  bottom: 2.5.h),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 56,
                              left: 20.w,
                              right: 20.w),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThirdNewtonLaw(),
                                ),
                              );
                            },
                            child: Text("3rd Law of Motion",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 16.sp,
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
                                  left: 2.5.w,
                                  right: 2.5.w,
                                  top: 2.5.h,
                                  bottom: 2.5.h),
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 7.w, right: 7.w, bottom: 3.h),
        child: Container(
          child: TabBar(
            labelColor: Color(0xFF4785B4),
            unselectedLabelColor: Color(0xFFBA494B),
            labelStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xFF4785B4), width: 0.0)),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home_rounded),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.exit_to_app_outlined),
                text: 'Exit',
              ),
            ],
            controller: _tabController,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            // border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500.withOpacity(.7),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

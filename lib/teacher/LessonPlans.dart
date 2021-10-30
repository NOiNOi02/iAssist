// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:sizer/sizer.dart';
import 'package:open_file/open_file.dart';

class LessonPlans extends StatefulWidget {
  @override
  _LessonPlansState createState() => _LessonPlansState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _LessonPlansState extends State<LessonPlans>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late String filename;

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
          'TEACHER MODE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFBA494B),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Color(0xFFBA494B)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: SizeConfig.safeBlockVertical! * 100,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.safeBlockVertical! * 30,
                    decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   image: AssetImage('assets/images/TeacherHeader.png'),
                      // ),
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
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 33.w),
                          height: SizeConfig.safeBlockVertical! * 45,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 19,
                              left: 15.w,
                              right: 15.w),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                // child: Image.asset('assets/images/book.png')
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(75, 30, 0, 0),
                                child: Text(
                                  'LESSON PLANS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                    color: Color(0xFFBA494B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 35,
                              left: 10.w,
                              right: 10.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              OpenFile.open("assets/pdf/firstlaw.pdf");
                            },
                            icon: Icon(
                              MyFlutterApp.lessonplans,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #1 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 11.sp,
                                )),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 41,
                              left: 10.w,
                              right: 10.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              // filename = 'assets/pdf/secondlaw.pdf';
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => pdfviewer(),
                              //   ),
                              // );
                            },
                            icon: Icon(MyFlutterApp.lessonplans,
                                color: Color(0xFFBA494B)),
                            label: Text("LP #1 LESSON PLAN NEWTONS LAW",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 11.sp,
                                )),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 47,
                              left: 10.w,
                              right: 10.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              // filename = 'assets/pdf/thirdlaw.pdf';
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => pdfviewer(),
                              //   ),
                              // );
                            },
                            icon: Icon(MyFlutterApp.lessonplans,
                                color: Color(0xFFBA494B)),
                            label: Text("LP #1 LESSON PLAN NEWTONS LAW",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 11.sp,
                                )),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
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

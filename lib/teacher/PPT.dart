// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:sizer/sizer.dart';
import 'package:iassist/pdf_viewer.dart';
import 'package:iassist/pdf_api.dart';

class PPT extends StatefulWidget {
  @override
  _PPTState createState() => _PPTState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _PPTState extends State<PPT> with SingleTickerProviderStateMixin {
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
                    height: SizeConfig.safeBlockVertical! * 25,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/TeacherHeader.png'),
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
                          margin:
                              EdgeInsets.only(top: 13.h, right: 7.w, left: 7.w),
                          height: SizeConfig.safeBlockVertical! * 70,
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
                          margin: EdgeInsets.only(top: 5.h),
                          // width: size.width * 1.w,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                // height: size.height * .4,
                                margin: EdgeInsets.only(top: 11.h, left: 23.w),
                                child: (Image.asset('images/book.png')),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h, left: 37.w),
                                width: size.width * .6,
                                child: Text(
                                  'POWERPOINT PRESENTATION',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                    color: Color(0xFFBA494B),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 30.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
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
                        Container(
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 35.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #2 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 40.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #3 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 45.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #4 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 50.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #5 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 55.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #6 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 60.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #7 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 65.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #8 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 70.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #9 LESSON PLAN NEWTONS LAW",
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
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            top: 75.h,
                            left: 7.w,
                            right: 7.w,
                          ),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path = 'assets/documents/sample.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("LP #10 LESSON PLAN NEWTONS LAW",
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

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
      );
}

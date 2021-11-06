// ignore_for_file: file_names, prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/audioplayer_with_local_asset.dart';
import 'package:iassist/selectionpage.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:sizer/sizer.dart';
import 'package:iassist/pdf_viewer.dart';
import 'package:iassist/pdf_api.dart';

class Worksheet extends StatefulWidget {
  @override
  _WorksheetState createState() => _WorksheetState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _WorksheetState extends State<Worksheet>
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
          // alignment: center,
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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/TeacherHeader.png'),
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
                          margin: EdgeInsets.only(top: 5.h),
                          // width: size.width * 1.w,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                // height: size.height * .4,
                                margin: EdgeInsets.only(top: 11.h, left: 19.w),
                                child: Container(
                                  height: SizeConfig.safeBlockVertical! * 10,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                      image:
                                          AssetImage('assets/images/book.png'),
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15.h, left: 37.w),
                                width: size.width * .6,
                                child: Text(
                                  'WORKSHEETS',
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
                              final path =
                                  'assets/documents/ACT 1 ACTIVITY SHEET-Word-Search-Puzzle.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(
                              MyFlutterApp.pdf,
                              color: Color(0xFFBA494B),
                            ),
                            label: Text("WS #1 ACTIVITY 1 ACTIVITY SHEET",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 10.5.sp,
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
                              EdgeInsets.only(top: 37.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path =
                                  'assets/documents/ACT 2 ACTIVITY SHEET-Experiment.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(MyFlutterApp.pdf,
                                color: Color(0xFFBA494B)),
                            label: Text("WS #2 ACTIVITY 2 ACTIVITY SHEET",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 10.5.sp,
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
                          alignment: Alignment.topLeft,
                          margin:
                              EdgeInsets.only(top: 44.h, left: 7.w, right: 7.w),
                          child: OutlinedButton.icon(
                            onPressed: () async {
                              final path =
                                  'assets/documents/ACT 3 ACTIVITY SHEET Problem Solving.pdf';
                              final file = await PDFApi.loadAsset(path);
                              openPDF(context, file);
                            },
                            icon: Icon(MyFlutterApp.pdf,
                                color: Color(0xFFBA494B)),
                            label: Text("WS #3 ACTIVITY 3 ACTIVITY SHEET",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFBA494B),
                                  fontSize: 10.5.sp,
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
            padding: EdgeInsets.all(1.h),
            labelColor: Color(0xFF4785B4),
            unselectedLabelColor: Color(0xFF4785B4),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.transparent, width: 0.0)),
            tabs: <Widget>[
              Tab(
                icon: IconButton(
                    icon: Icon(Icons.home_rounded, size: 4.h),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectionPage(),
                          ),
                        )),
              ),
              Tab(
                  icon: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Settings',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF4785B4),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Dark Mode\t\t',
                                              style: TextStyle(
                                                color: Color(0xFF4785B4),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          ChangeThemeButtonWidget(),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Music \t\t\t\t\t\t\t',
                                              style: TextStyle(
                                                color: Color(0xFF4785B4),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          AudioPlayerWithLocalAsset(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      icon: Icon(Icons.settings, size: 4.h))),
              // AudioPlayerrr(),
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.exit_to_app_outlined, size: 4.h),
                  onPressed: () {
                    Future.delayed(const Duration(milliseconds: 1000), () {
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    });
                  },
                ),
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

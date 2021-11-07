// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/audioplayer_with_local_asset.dart';
import 'package:iassist/fade_transition.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/pdf_api.dart';
import 'package:iassist/pdf_viewer.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/selectionpage.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

class TeacherFrontPage extends StatefulWidget {
  @override
  _TeacherFrontPageState createState() => _TeacherFrontPageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _TeacherFrontPageState extends State<TeacherFrontPage>
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
            fontSize: 12.sp,
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
                          height: SizeConfig.safeBlockVertical! * 65,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical! * 2),
                              height: SizeConfig.safeBlockVertical! * 14,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/images/TeacherPic.png'),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Text(
                                'Hello Teacher!',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                  color: Color(0xFFBA494B),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Text('You can view the Lesson Plans, Powerpoint\nPresentations, and Worksheets here.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp,
                                  color: Color(0xFF4785B4),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * .6,
                              margin: EdgeInsets.only(
                                  top: 2.h),
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(CustomPageRoute(LessonPlans()));
                                },
                                icon: Icon(
                                  MyFlutterApp.lessonplans,
                                  color: Color(0xFFBA494B),
                                ),
                                label: Text("LESSON PLANS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBA494B),
                                      fontSize: 15.sp,
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
                                      left: 2.w,
                                      right: 2.w,
                                      top: 2.5.h,
                                      bottom: 2.5.h),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * .6,
                              margin: EdgeInsets.only(top: 2.h),
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(CustomPageRoute(PPT()));
                                },
                                icon: Icon(MyFlutterApp.ppt,
                                    color: Color(0xFFBA494B)),
                                label: Text("POWERPOINT\nPRESENTATIONS",
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBA494B),
                                      fontSize: 15.sp,
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
                                      left: 1.w, top: 2.h, bottom: 2.h),
                                ),
                              ),
                            ),
                            Container(
                              width: size.width * .6,
                              margin: EdgeInsets.only(top: 2.h),
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(CustomPageRoute(Worksheet()));
                                },
                                icon: Icon(MyFlutterApp.wrksht,
                                    color: Color(0xFFBA494B)),
                                label: Text("WORKSHEETS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFBA494B),
                                      fontSize: 15.sp,
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
                                      right: 5.w, top: 2.5.h, bottom: 2.5.h),
                                ),
                              ),
                            ),
                          ],
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
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)
            ),
            tabs: <Widget>[
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.home_rounded, size: 4.h),
                  onPressed: () => Navigator.of(context).push(CustomPageRoute(SelectionPage()))
                ),
              ),
              Tab(
                icon: IconButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
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
                                Text('Settings',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFF4785B4), fontSize: 16.sp, fontWeight: FontWeight.bold,),
                                ),
                                SizedBox(height: 2.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Dark Mode\t\t', style: TextStyle(color: Color(0xFF4785B4), fontSize: 14.sp, fontWeight: FontWeight.bold,)),
                                    ChangeThemeButtonWidget(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Music \t\t\t\t\t\t\t', style: TextStyle(color: Color(0xFF4785B4), fontSize: 14.sp, fontWeight: FontWeight.bold,)),
                                    AudioPlayerWithLocalAsset(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                  },
                  icon: Icon(Icons.settings, size: 4.h)
                )
              ),
              // AudioPlayerrr(),
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.exit_to_app_outlined, size: 4.h),
                  onPressed: () {
                    Future.delayed(const Duration(milliseconds: 1000), () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    });
                    stopMusic();
                  },
                ),
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

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:sizer/sizer.dart';

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
                    height: SizeConfig.safeBlockVertical! * 30,
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
                                  child: Image.asset('assets/images/book.png')),
                              Padding(
                                padding: EdgeInsets.fromLTRB(75, 20, 0, 0),
                                child: Text(
                                  'POWERPOINT PRESENTATION',
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LessonPlans(),
                                ),
                              );
                            },
                            icon: Icon(
                              MyFlutterApp.lessonplans,
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
                          width: size.width,
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 41,
                              left: 10.w,
                              right: 10.w),
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PPT(),
                                ),
                              );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Worksheet(),
                                ),
                              );
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

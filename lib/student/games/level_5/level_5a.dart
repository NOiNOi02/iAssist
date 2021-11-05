// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/Leaderboards.dart';
import 'package:iassist/student/games/Modals.dart';
import 'package:iassist/student/studentfrontpage.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_3/level_4.dart';
import 'package:iassist/student/games/level_4/level_4a.dart';
import 'package:iassist/student/games/level_4/level_4b.dart';
import 'package:iassist/student/games/level_4/level_4c.dart';
import 'package:iassist/student/games/level_4/questions.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import '../../../audioplayer_with_local_asset.dart';
import '../../../selectionpage.dart';

class Level5a extends StatefulWidget {
  @override
  _Level5aState createState() => _Level5aState();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

Alignment newtAlignment = Alignment.bottomLeft;

class _Level5aState extends State<Level5a> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current_level = getCurrentLevel();
    return Scaffold(
      // backgroundColor: Color(0xFFBA494B),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(
          color: Color(0xFFBA494B),
        ),
        title: Text(
          'GAME MODE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFBA494B),
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 3.5.w)],
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFFBA494B),
                    image: DecorationImage(
                        image: AssetImage("assets/images/SelectionHeader.png"),
                        fit: BoxFit.cover)),
                child: Text(
                  'I-Assist',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFBA494B),
                ),
                title: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectionPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color(0xFFBA494B),
                ),
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Color(0xFFBA494B),
                ),
                title: Text(
                  'Exit',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0XFFFFB79D),
                  Color(0xFFBA494B),
                ],
              )),
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Group42.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.9),
                          spreadRadius: 3,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical! * 2,
                        left: SizeConfig.safeBlockHorizontal! * 5),
                    height: SizeConfig.safeBlockVertical! * 9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        alignment: Alignment.topLeft,
                        image: AssetImage('assets/images/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 6.h, left: 25.w),
                    child: Text(
                      'Level 5',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.blockSizeVertical! * 10.8,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal! * 5),
                          height: SizeConfig.blockSizeVertical! * 100,
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
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          height: 500,
                          width: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage(
                                  'assets/images/games/level5/Group 83.png'),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.74,
                          margin: const EdgeInsets.only(top: 555, left: 53.5),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 4),
                                  blurRadius: 5.0)
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 1.0],
                              colors: [
                                Color(0xFFBA494B),
                                Color(0XFFFFB79D),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              // elevation: MaterialStateProperty.all(3),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              //if pushed proceeed to questions
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Leaderboards(),
                                  ));
                              showInputPlayerName(context, size);
                              resetCurrentLevel();
                              resetCurrentLevel();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
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
    );
  }
}

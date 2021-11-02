// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/level_1/Level1QuestionsAndAnswers.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/level_1.dart';
import 'package:iassist/student/games/level_1/questions.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:sizer/sizer.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import '../../../selectionpage.dart';
import 'package:responsive_grid/responsive_grid.dart';

class NewtPuzzle extends StatefulWidget {
  @override
  _NewtPuzzleState createState() => _NewtPuzzleState();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

double newtSize = 0.57;
double newtMargin = 0.10;
double newtMarginLeft = 0;
Alignment newtAlignment = Alignment.topCenter;
bool showDialogBox = false;

class _NewtPuzzleState extends State<NewtPuzzle> {
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
            fontSize: 12.sp,
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
                  color: Theme.of(context).iconTheme.color,
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
                  color: Theme.of(context).iconTheme.color,
                ),
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Theme.of(context).iconTheme.color,
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
                        alignment: Alignment.topLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/games/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.0, -1.0),
                    padding: EdgeInsets.only(top: 4.h, left: 15.w),
                    child: Text(
                      'Level 1\nIntroduction to Newton\'s Law of Motion',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
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
                          alignment: Alignment(0.0, -1.0),
                          padding: EdgeInsets.only(top: 3.h),
                          child: Text(
                            (getCurrentNumber() == 5)
                                ? 'Very good! \nAll questions done, Character unlocked!'
                                : 'Good work! \n' +
                                    (getCurrentNumber()).toString() +
                                    " question done, keep going",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        if (showDialogBox)
                          Container(
                            margin: EdgeInsets.only(
                                top: size.height * 0.33,
                                left: size.width * 0.05),
                            height: size.height * 0.35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.bottomLeft,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/games/Level1/robot.png'),
                              ),
                            ),
                          ),
                        if (showDialogBox)
                          Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockVertical! * 15,
                                right: SizeConfig.safeBlockHorizontal! * 10),
                            height: SizeConfig.safeBlockVertical! * 25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.topRight,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/games/Level1/dialogBox.png'),
                              ),
                            ),
                          ),
                        if (showDialogBox)
                          Container(
                            margin: EdgeInsets.only(
                                left: SizeConfig.blockSizeHorizontal! * 45,
                                top: SizeConfig.blockSizeVertical! * 21),
                            child: Text(
                              "Hi! My name is NEWT. I \nwill be your guide as you\nlearn Newton’s three laws \nof motion.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 10.sp,
                                // fontWeight: FontWeight.w700,
                                color: Color(0xFFBA494B),
                              ),
                            ),
                          ),
                        if (!showDialogBox)
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 17.w, vertical: 11.h),
                            color: Colors.transparent,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 1.w, vertical: 5.h),
                                  height: 46.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      alignment: Alignment.topCenter,
                                      fit: BoxFit.contain,
                                      image: AssetImage(
                                          'assets/images/games/Level1/robot.png'),
                                    ),
                                  ),
                                ),
                                for (int i = 0; i < 5 - getCurrentNumber(); i++)
                                  Container(
                                    margin: (i == 0)
                                        ? EdgeInsets.only(left: 0, top: 20.h)
                                        : (i == 1)
                                            ? EdgeInsets.only(
                                                left: 0, top: 35.5.h)
                                            : (i == 2)
                                                ? EdgeInsets.only(
                                                    left: 33.w, top: 4.5.h)
                                                : (i == 3)
                                                    ? EdgeInsets.only(
                                                        left: 32.5.w,
                                                        top: 35.5.h)
                                                    : EdgeInsets.only(
                                                        left: 32.5.w,
                                                        top: 35.5.h),
                                    height: 16.h,
                                    width: (i == 0) ? 100.w : 50.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        alignment: Alignment.centerLeft,
                                        fit: BoxFit.contain,
                                        image: (i == 0)
                                            ? AssetImage(
                                                'assets/images/games/Level1/rectangleLock.png')
                                            : AssetImage(
                                                'assets/images/games/Level1/squareLock.png'),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.safeBlockHorizontal! * 75,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical! * 70,
                              left: SizeConfig.safeBlockHorizontal! * 12),
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
                              if (showDialogBox) {
                                //continue to level 2
                                setCurrentLevel();
                                resetCurrentLives();
                                resetCurrentPoints();
                                resetCurrentNumber();
                                showDialogBox = false;
                                newtSize = 0.57;
                                newtMargin = 0.10;
                                newtMarginLeft = 0;
                                newtAlignment = Alignment.topCenter;

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GameFrontPage(),
                                  ),
                                );
                                return;
                              }
                              if (getCurrentNumber() < 5) {
                                setTotalPoints(getCurrentPoints());
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuestionsLevel1(),
                                  ),
                                );
                              } else {
                                if (showDialogBox) {
                                  showDialogBox = false;
                                } else {
                                  showDialogBox = true;
                                }
                                newtSize = 0.35;
                                newtMargin = 0.33;
                                newtMarginLeft = 0.05;
                                newtAlignment = Alignment.bottomLeft;
                                setState(() {});
                              }
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

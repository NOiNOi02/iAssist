// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/games/Leaderboards.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/Level1QuestionsAndAnswers.dart';
import 'package:iassist/student/games/level_1/questions.dart';
import 'package:iassist/student/games/level_3/questions.dart';
import 'package:iassist/student/games/level_4/questions.dart';
import 'package:iassist/student/games/level_5/questions.dart';
import 'package:iassist/student/studentfrontpage.dart';
import 'package:iassist/student/games/level_2/questions.dart';
import 'package:sizer/sizer.dart';

//#TODOS: Modal designs, floating button and input player design

void showLivesModal(
  BuildContext context,
  Size size,
) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: SizeConfig.safeBlockVertical! * 40,
            width: SizeConfig.safeBlockHorizontal! * 70,
            margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical! * 30,
                left: SizeConfig.safeBlockHorizontal! * 12,
                right: SizeConfig.safeBlockHorizontal! * 12),
            decoration: BoxDecoration(
              color: Color(0xFFFCFBC2),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.safeBlockVertical! * 8,
                      left: SizeConfig.safeBlockHorizontal! * 9,
                      right: SizeConfig.safeBlockHorizontal! * 9,
                      bottom: SizeConfig.safeBlockVertical! * 4),
                  decoration: BoxDecoration(
                    color: Color(0xFFFEC192),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  height: SizeConfig.safeBlockVertical! * 25,
                  width: SizeConfig.safeBlockHorizontal! * 25,
                  margin: EdgeInsets.only(top: 7.h, left: 22.w),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/games/heart.png'),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 1.h),
                  child: Text(
                    'You will have 3 lives \nin this level',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Color(0xffCB2D3F),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 25.h),
                  child: Text(
                    'Lives Remaining',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      color: Color(0xffCB2D3F),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 15.h),
                  child: Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal! * 30,
                  height: SizeConfig.safeBlockVertical! * 5,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                      top: 31.h,
                      left: SizeConfig.safeBlockVertical! * 11),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //#TODO: DI ko na ffloat si button, naccut kapag tg babaan ko ang margin
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
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
                      Navigator.pop(context);
                      if (getCurrentLevel() == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel1(),
                          ),
                        );
                      }
                      if (getCurrentLevel() == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel2(),
                          ),
                        );
                      }
                      if (getCurrentLevel() == 3) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel3(),
                          ),
                        );
                      }
                      if (getCurrentLevel() == 4) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel4(),
                          ),
                        );
                      }
                      if (getCurrentLevel() == 5) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel5(),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        bottom: 1.h,
                      ),
                      child: Text(
                        "Okay",
                        style: TextStyle(
                          fontSize: 12.sp,
                          // fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}

void showNoLivesModal(
  BuildContext context,
  Size size,
) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: SizeConfig.safeBlockVertical! * 40,
            width: SizeConfig.safeBlockHorizontal! * 70,
            margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical! * 30,
                left: SizeConfig.safeBlockHorizontal! * 12,
                right: SizeConfig.safeBlockHorizontal! * 12),
            decoration: BoxDecoration(
              color: Color(0xFFFCFBC2),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.safeBlockVertical! * 8,
                      left: SizeConfig.safeBlockHorizontal! * 9,
                      right: SizeConfig.safeBlockHorizontal! * 9,
                      bottom: SizeConfig.safeBlockVertical! * 4),
                  decoration: BoxDecoration(
                    color: Color(0xFFFEC192),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  height: SizeConfig.safeBlockVertical! * 25,
                  width: SizeConfig.safeBlockHorizontal! * 25,
                  margin: EdgeInsets.only(top: 7.h, left: 22.w),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/games/heart.png'),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 1.h),
                  child: Text(
                    'You ran out of lives \nin this level',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Color(0xffCB2D3F),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 25.h),
                  child: Text(
                    'No Lives Remaining',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      color: Color(0xffCB2D3F),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 15.h),
                  child: Text(
                    '0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal! * 50,
                  height: SizeConfig.safeBlockVertical! * 5,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                      top: 31.h,
                      left: SizeConfig.safeBlockVertical! * 5.5),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //#TODO: DI ko na ffloat si button, naccut kapag tg babaan ko ang margin
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
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
                        ),
                      );
                      resetCurrentLevel();
                      showInputPlayerName(context, size);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        bottom: 1.h,
                      ),
                      child: Text(
                        "Go to Leaderboards",
                        style: TextStyle(
                          fontSize: 12.sp,
                          // fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}

void showInputPlayerName(BuildContext context, Size size) {
  TextEditingController _textFieldController = TextEditingController();
  String inputName = "";
  showDialog(
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xffFCFBC2),
          title: Text('Player name',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffCB2D3F), fontWeight: FontWeight.bold)),
          content: TextField(
            onChanged: (value) {
              // setState(() {
              inputName = value;
              // });
            },
            controller: _textFieldController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: "Enter name"),
          ),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text('CANCEL'),
              onPressed: () {
                // setState(() {
                Navigator.pop(context);
                showDontSave(context, size);
                inputName = "";

                // });
              },
            ),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('OK'),
              onPressed: () {
                // setState(() {
                //   codeDialog = valueText;
                Navigator.pop(context);
                print(getTotalPoints().toString()+'points');
                setPlayerNamesAndScores(inputName, getTotalPoints());
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Leaderboards(),
                  ),
                );
                inputName = "";
                resetCurrentLives();
                resetCurrentPoints();
                resetCurrentLevel();
                resetCurrentNumber();
                resetTotalPoints();
                // });
              },
            ),
          ],
        );
      });
}

void showDontSave(BuildContext context, Size size) {
  TextEditingController _textFieldController = TextEditingController();
  String inputName = "";
  showDialog(
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xffFCFBC2),
          title: Text('Don\'t save to leaderboards?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xffCB2D3F), fontWeight: FontWeight.bold)),
          actions: <Widget>[
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text('No'),
              onPressed: () {
                // setState(() {
                Navigator.pop(context);
                showInputPlayerName(context, size);
                // });
              },
            ),
            FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text('Yes'),
              onPressed: () {
                // setState(() {
                //   codeDialog = valueText;
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentFrontPage(),
                  ),
                );
                resetCurrentLives();
                resetCurrentPoints();
                resetCurrentLevel();
                resetCurrentNumber();
                resetTotalPoints();
                // });
              },
            ),
          ],
        );
      });
}

void showNoTime(
  BuildContext context,
  Size size,
) {
  showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    context: context,
    pageBuilder: (_, __, ___) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: SizeConfig.safeBlockVertical! * 40,
            width: SizeConfig.safeBlockHorizontal! * 70,
            margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical! * 30,
                left: SizeConfig.safeBlockHorizontal! * 12,
                right: SizeConfig.safeBlockHorizontal! * 12),
            decoration: BoxDecoration(
              color: Color(0xFFFCFBC2),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.safeBlockVertical! * 8,
                      left: SizeConfig.safeBlockHorizontal! * 9,
                      right: SizeConfig.safeBlockHorizontal! * 9,
                      bottom: SizeConfig.safeBlockVertical! * 4),
                  decoration: BoxDecoration(
                    color: Color(0xFFFEC192),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Container(
                  height: SizeConfig.safeBlockVertical! * 25,
                  width: SizeConfig.safeBlockHorizontal! * 25,
                  margin: EdgeInsets.only(top: 7.h, left: 22.w),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/games/timer.png'),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 1.h),
                  child: Text(
                    'You ran out of time!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Color(0xffCB2D3F),
                    ),
                  ),
                ),
                Container(
                  width: SizeConfig.safeBlockHorizontal! * 50,
                  height: SizeConfig.safeBlockVertical! * 5,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                      top: SizeConfig.safeBlockHorizontal! * 59,
                      left: SizeConfig.safeBlockVertical! * 5.5),
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //#TODO: DI ko na ffloat si button, naccut kapag tg babaan ko ang margin
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
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
                      print(getCurrentLives());
                      if (getCurrentLives() <= 0) {
                        showNoLivesModal(context, size);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionsLevel5(),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 1.h,
                        bottom: 1.h,
                      ),
                      child: Text(
                        "Try again!",
                        style: TextStyle(
                          fontSize: 12.sp,
                          // fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}

// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, unused_local_variable, unused_element, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/Modals.dart';
import 'package:iassist/student/games/Leaderboards.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/level_1.dart';
import 'package:iassist/student/games/level_1/Level1QuestionsAndAnswers.dart';
import 'package:iassist/student/games/level_1/NewtPuzzle.dart';
import 'package:sizer/sizer.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import '../../../selectionpage.dart';

class QuestionsLevel1 extends StatefulWidget {
  @override
  _QuestionsLevel1State createState() => _QuestionsLevel1State();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

//color container for selected choices
List<Color> _colorContainerText = [Color(0xFFBA494B), Colors.white];
List<Color> _colorContainerButton = [Colors.white, Colors.black];
DecorationImage checkImage = DecorationImage(
    alignment: Alignment.centerLeft,
    fit: BoxFit.scaleDown,
    image: AssetImage('assets/images/games/check.png'));
DecorationImage wrongImage = DecorationImage(
    alignment: Alignment.centerLeft,
    fit: BoxFit.scaleDown,
    image: AssetImage('assets/images/games/wrong.png'));
DecorationImage noImage = DecorationImage(
    alignment: Alignment.centerLeft,
    fit: BoxFit.scaleDown,
    image: AssetImage('assets/images/games/noImage.png'));
List<int> nextFlag = [1, 0, 0];
var triviaFlag = false;
var answer;
var prev_answer;
var answerResult = null;

class _QuestionsLevel1State extends State<QuestionsLevel1> {
  void resetValues() {
    answer = prev_answer = answerResult = null;
    triviaFlag = false;
    nextFlag = [1, 0, 0];
    resetCurrentLives();
    resetCurrentNumber();
    resetTotalPoints();
    resetCurrentPoints();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current_level = getCurrentLevel();
    var questions = getQuestions();
    var choices = getChoices();
    var trivia = getTrivias();
    var incorrectMessage = "Your answer is incorrect! Try again!";

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
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Group48.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFBA494B).withOpacity(.9),
                          spreadRadius: 3,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1.0, -1.0),
                    padding: EdgeInsets.only(top: 4.h, left: 5.w),
                    child: Text(
                      'Level 1\nIntroduction to Newton\'s \nLaw of Motion',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.sp,
                          color: Colors.white.withOpacity(0.72)),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.180,
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
                        //points
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 1.5.h),
                          child: Text(
                            "Current Points: " +
                                getCurrentPoints().toString() +
                                "pts",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(top: 1.5.h, right: 6.w),
                          child: Text(
                            "Total Points: " + getTotalPoints().toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Color(0xFF4785B4),
                            ),
                          ),
                        ),
                        //lives
                        for (int i = 0; i < getCurrentLives(); i++)
                          Container(
                            height: 3.h,
                            width: 6.w,
                            margin:
                                EdgeInsets.only(left: (i + 1) * 7.w, top: 1.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image:
                                    AssetImage('assets/images/games/life.png'),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(17),
                                bottomRight: Radius.circular(17),
                              ),
                            ),
                          ),
                        for (int i = 0; i < 3; i++)
                          Container(
                            height: 3.h,
                            width: 6.w,
                            margin:
                                EdgeInsets.only(left: (i + 1) * 7.w, top: 1.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/games/lives2.png'),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(17),
                                bottomRight: Radius.circular(17),
                              ),
                            ),
                          ),
                        //questions
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding:
                              EdgeInsets.only(top: 7.h, left: 8.w, right: 8.w),
                          child: Text(
                            //getting the questions based from what current number is
                            questions[getCurrentNumber()],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        //Trivias
                        if (triviaFlag)
                          Container(
                            alignment: Alignment(0.0, 0.0),
                            padding: EdgeInsets.only(
                                top: 48.h, left: 10.w, right: 10.w),
                            child: Text(
                              //getting the questions based from what current number is
                              trivia[getCurrentNumber()],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                color: Color(0xFFBA494B),
                              ),
                            ),
                          ),
                        //choices
                        for (int i = 0;
                            i < choices[getCurrentNumber()].length;
                            i++)
                          //loop trough all choices and create a rectangle
                          Container(
                            alignment: Alignment.center,
                            width: 74.w,
                            margin: EdgeInsets.only(
                                top: (i + 2) * 10.h.toDouble(), left: 12.5.w),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(0, 4),
                                    blurRadius: 5.0),
                              ],
                              border: (answerResult != null)
                                  ? (answerResult == true && i == prev_answer)
                                      ? Border.all(
                                          color: Color(0xFF00FF0A), width: 3)
                                      : (i == prev_answer)
                                          ? Border.all(
                                              color: Colors.red, width: 3)
                                          : Border.all(color: Color(0xFFEB9785))
                                  : Border.all(color: Color(0xFFBA494B)),
                              color: (i == answer)
                                  ? _colorContainerButton[1]
                                  : _colorContainerButton[0],
                              borderRadius: BorderRadius.circular(5),
                              image: (answerResult != null)
                                  ? (answerResult == true && i == prev_answer)
                                      ? checkImage
                                      : (i == prev_answer)
                                          ? wrongImage
                                          : noImage
                                  : noImage,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                // elevation: MaterialStateProperty.all(3),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                              onPressed: (answerResult != null)
                                  ? null
                                  : () {
                                      //if pushed proceeed set the value of answer
                                      answer = i;
                                      setState(() {});
                                    },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  choices[getCurrentNumber()][i],
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    // fontWeight: FontWeight.w700,
                                    color: (answerResult != null)
                                        ? (answerResult == true &&
                                                i == prev_answer)
                                            ? Color(0xFFBA494B)
                                            : (i == prev_answer)
                                                ? Color(0xFFBA494B)
                                                : Color(0xFFEB9785)
                                        : (i == answer)
                                            ? _colorContainerText[1]
                                            : _colorContainerText[0],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        //next
                        Container(
                          alignment: Alignment.center,
                          width: SizeConfig.safeBlockHorizontal! * 75,
                          margin: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical! * 60,
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
                          child: Column(
                            children: [
                              //next 1st state
                              if (nextFlag[0] == 1)
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: (answer == null)
                                      ? null
                                      : () {
                                          //if pushed proceeed to questions
                                          answerResult = checkAnswer(
                                              answer, getCurrentNumber() + 1);
                                          if (answerResult) {
                                            //the answer is corret, proceed to showing of trivia
                                            triviaFlag = true;
                                            nextFlag[0] = 0;
                                            nextFlag[1] = 1;
                                          } else {
                                            //proceed to showing of not correct answer page
                                            setCurrentLives();
                                            setCurrentPoints(getCurrentLives());
                                            answerResult = false;
                                            nextFlag[0] = 0;
                                            nextFlag[2] = 1;
                                          }
                                          //resetting the values
                                          prev_answer = answer;
                                          answer = null;
                                          setState(() {});
                                        },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "NEXT",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              //next 2nd state
                              if (nextFlag[1] == 1)
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    //if pushed proceeed to questions
                                    answer = prev_answer = answerResult = null;
                                    triviaFlag = false;
                                    nextFlag = [1, 0, 0];
                                    setCurrentNumber();
                                    // setState(() {});
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewtPuzzle(),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      "NEXT",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              //next 3rd state
                              if (nextFlag[2] == 1)
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    // elevation: MaterialStateProperty.all(3),
                                    shadowColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    //if pushed retake question
                                    //resetting the values
                                    answer = prev_answer = answerResult = null;
                                    triviaFlag = false;
                                    nextFlag = [1, 0, 0];

                                    if (getCurrentLives() <= 0) {
                                      resetCurrentLives();
                                      resetCurrentNumber();
                                      resetTotalPoints();
                                      resetCurrentPoints();
                                      //push to leaderboards
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => (),
                                      //   ),
                                      // );
                                      showNoLivesModal(context, size);
                                    } else {
                                      setState(() {});
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Text(
                                      incorrectMessage,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        // fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                            ], //children
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

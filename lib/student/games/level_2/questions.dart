// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/games/Modals.dart';
import 'package:iassist/student/games/level_2/level_3.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_2/level_2.dart';
import 'package:iassist/student/games/level_2/Level2QuestionsAndAnswers.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../selectionpage.dart';

class QuestionsLevel2 extends StatefulWidget {
  @override
  _QuestionsLevel2State createState() => _QuestionsLevel2State();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

//color container for selected choices
List<Color> _colorContainerText = [Color(0xFFBA494B), Colors.white];
List<Color> _colorContainerButton = [Colors.white, Color(0xFFBA494B)];
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
List<int> multipleAnswers = [-1, -1, -1];
var triviaFlag = false;
var answer;
var prev_answer;
int prev_multiple_ans_a = -1,
    prev_multiple_ans_b = -1,
    prev_multiple_ans_c = -1;
List<bool> answer_result_multiple = [false, false, false];
var answerResult = null;
int temp = 0;
var incorrectMessage = "Your answer is incorrect! Try again!";

class _QuestionsLevel2State extends State<QuestionsLevel2> {
  final CountDownController _timerController = CountDownController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current_level = getCurrentLevel();
    var questions = getQuestions();
    var choices = getChoices();
    var images = getImages();
    var trivia = getTrivias();
    var triviaImage = getTriviaImage();
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
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
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
                    margin: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical! * 2,
                        left: SizeConfig.safeBlockHorizontal! * 5),
                    height: SizeConfig.safeBlockVertical! * 9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.topLeft,
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.0, -1.0),
                    padding: EdgeInsets.only(top: 4.h, left: 15.w),
                    child: Text(
                      'Level 2\nNewton\'s First Law of Motion: Inertia',
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
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: size.height * 1,
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
                        //timer
                        Container(
                          height: size.height * 0.12,
                          width: size.width * 0.12,
                          margin: EdgeInsets.only(left: 30, top: 20),
                          child: CircularCountDownTimer(
                            isReverse: true,
                            isReverseAnimation: true,
                            ringColor: Color(0xFFEB9785),
                            fillColor: Color(0xFFBA494B),
                            backgroundColor: Colors.white,
                            width: size.width * 0.15,
                            height: size.height * 0.15,
                            duration: 15,
                            autoStart: true,
                            textFormat: 's',
                            controller: _timerController,
                            onComplete: () {
                              setCurrentLives();
                              setCurrentPoints(getCurrentLives());
                              answerResult = false;
                              answer_result_multiple = [false, false, false];
                              nextFlag[0] = 0;
                              nextFlag[2] = 1;
                              setState(() {});
                            },
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

                        Container(
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockHorizontal! * 12,
                                right: SizeConfig.safeBlockHorizontal! * 8),
                            height: SizeConfig.safeBlockVertical! * 25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/games/level2/Group 59.png'),
                              ),
                            ),
                            child: Stack(
                              children: [
                                //questions
                                Container(
                                    alignment: Alignment(0.0, -1.0),
                                    padding: EdgeInsets.only(
                                        top: 5.7.h, left: 30.w, right: 10.w),
                                    child: (!triviaFlag)
                                        ? AutoSizeText(
                                            //getting the questions based from what current number is
                                            questions[getCurrentNumber()],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.sp,
                                              color: Color(0xFFBA494B),
                                            ),
                                            maxLines: 3,
                                          )
                                        : AutoSizeText(
                                            trivia[getCurrentNumber()],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 6.sp,
                                              color: Color(0xFFBA494B),
                                            ),
                                            maxLines: 9,
                                          )),
                              ],
                            )),

                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 30,
                              left: 5.w,
                              right: 5.w),
                          height: SizeConfig.safeBlockVertical! * 15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: (!triviaFlag)
                                    ? AssetImage(images[getCurrentNumber()])
                                    : AssetImage(
                                        triviaImage[getCurrentNumber()])),
                          ),
                        ),

                        //choices
                        for (int i = 0;
                            i < choices[getCurrentNumber()].length;
                            i++)
                          Container(
                            alignment: Alignment.center,
                            width: 74.w,
                            margin: (getCurrentNumber() == 11)
                                ? EdgeInsets.only(
                                    top: (i + 3.5) * 8.h.toDouble(), left: 53.5)
                                : (choices[getCurrentNumber()].length >= 4)
                                    ? EdgeInsets.only(
                                        top: (i + 5.9) * 8.h.toDouble(),
                                        left: 53.5)
                                    : EdgeInsets.only(
                                        top: (i + 6.5) * 8.h.toDouble(),
                                        left: 53.5),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(0, 4),
                                    blurRadius: 5.0),
                              ],
                              border: (getCurrentNumber() == 11 &&
                                      nextFlag[0] == 0)
                                  ? (prev_multiple_ans_a != -1 &&
                                          prev_multiple_ans_b != -1 &&
                                          prev_multiple_ans_c != -1)
                                      ? (answer_result_multiple[0] &&
                                              i == prev_multiple_ans_a)
                                          ? Border.all(
                                              color: Color(0xFF00FF0A),
                                              width: 2)
                                          : (answer_result_multiple[1] &&
                                                  i == prev_multiple_ans_b)
                                              ? Border.all(
                                                  color: Color(0xFF00FF0A),
                                                  width: 2)
                                              : (answer_result_multiple[2] &&
                                                      i == prev_multiple_ans_c)
                                                  ? Border.all(
                                                      color: Color(0xFF00FF0A),
                                                      width: 2)
                                                  : Border.all(
                                                      color: Colors.red,
                                                      width: 2)
                                      : Border.all(color: Color(0xFFEB9785))
                                  : (answerResult == true && i == prev_answer)
                                      ? Border.all(
                                          color: Color(0xFF00FF0A), width: 3)
                                      : (i == prev_answer)
                                          ? Border.all(
                                              color: Colors.red, width: 3)
                                          : Border.all(
                                              color: Color(0xFFEB9785)),
                              color: (getCurrentNumber() == 11)
                                  ? (i == multipleAnswers[0])
                                      ? _colorContainerButton[1]
                                      : (i == multipleAnswers[1])
                                          ? _colorContainerButton[1]
                                          : (i == multipleAnswers[2])
                                              ? _colorContainerButton[1]
                                              : _colorContainerButton[0]
                                  //hanggang digdi
                                  : (i == answer)
                                      ? _colorContainerButton[1]
                                      : _colorContainerButton[0],
                              borderRadius: BorderRadius.circular(5),
                              image: (answerResult != null)
                                  ? (answerResult == true && i == prev_answer)
                                      ? checkImage
                                      : (i == prev_answer)
                                          ? wrongImage
                                          : noImage
                                  : (getCurrentNumber() == 11 &&
                                          nextFlag[0] == 0)
                                      ? (prev_multiple_ans_a != -1 &&
                                              prev_multiple_ans_b != -1 &&
                                              prev_multiple_ans_c != -1)
                                          ? (answer_result_multiple[0] &&
                                                  i == prev_multiple_ans_a)
                                              ? checkImage
                                              : (answer_result_multiple[1] &&
                                                      i == prev_multiple_ans_b)
                                                  ? checkImage
                                                  : (answer_result_multiple[
                                                              2] &&
                                                          i ==
                                                              prev_multiple_ans_c)
                                                      ? checkImage
                                                      : noImage
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
                                  : (getCurrentNumber() == 11 &&
                                          nextFlag[0] == 0)
                                      ? null
                                      : () {
                                          //if pushed proceeed set the value of answer
                                          if (getCurrentNumber() == 11) {
                                            if (temp > 2) {
                                              temp = 0;
                                            }
                                            multipleAnswers[temp] = i;
                                            temp++;
                                          } else {
                                            answer = i;
                                          }
                                          print(getCurrentNumber());
                                          print(multipleAnswers);
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
                                        //#Multiple ini si tig dagdag ko melvs
                                        : (getCurrentNumber() == 11)
                                            ? (i == multipleAnswers[0])
                                                ? _colorContainerText[1]
                                                : (i == multipleAnswers[1])
                                                    ? _colorContainerText[1]
                                                    : (i == multipleAnswers[2])
                                                        ? _colorContainerText[1]
                                                        : _colorContainerText[0]
                                            //hanggagng digdi
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
                          margin: (choices[getCurrentNumber()].length >= 4)
                              ? EdgeInsets.only(
                                  top: SizeConfig.blockSizeVertical! * 80,
                                  left: SizeConfig.safeBlockHorizontal! * 12)
                              : EdgeInsets.only(
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
                                      //Multiple: ini pa
                                      ? (getCurrentNumber() == 11)
                                          ? () {
                                              //if pushed proceeed to questions
                                              answer_result_multiple =
                                                  checkMultipleAnswers(
                                                      multipleAnswers,
                                                      getCurrentNumber() + 1);

                                              int correctAnswers =
                                                  answer_result_multiple
                                                      .where((item) =>
                                                          item == true)
                                                      .length;
                                              if (correctAnswers >= 1) {
                                                //the answer is corret, proceed to showing of trivia
                                                triviaFlag = true;
                                                nextFlag[0] = 0;
                                                nextFlag[1] = 1;
                                                _timerController.pause();
                                              } else {
                                                //proceed to showing of not correct answer page
                                                setCurrentLives();
                                                setCurrentPoints(
                                                    getCurrentLives());
                                                nextFlag[0] = 0;
                                                nextFlag[2] = 1;
                                              }
                                              //resetting the values
                                              prev_multiple_ans_a =
                                                  multipleAnswers[0];
                                              prev_multiple_ans_b =
                                                  multipleAnswers[1];
                                              prev_multiple_ans_c =
                                                  multipleAnswers[2];
                                              multipleAnswers = [-1, -1, -1];
                                              setState(() {});
                                            }
                                          : null
                                      //hanggang digdi
                                      : () {
                                          //if pushed proceeed to questions
                                          print("aaa");
                                          answerResult = checkAnswer(
                                              answer, getCurrentNumber() + 1);

                                          if (answerResult) {
                                            //the answer is corret, proceed to showing of trivia
                                            triviaFlag = true;
                                            nextFlag[0] = 0;
                                            nextFlag[1] = 1;
                                            _timerController.pause();
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
                                    int points = getCurrentPoints();
                                    setCurrentPoints(getCurrentLives());
                                    if (getCurrentNumber() == 12) {
                                      int correctAnswers =
                                          answer_result_multiple
                                              .where((item) => item == true)
                                              .length;
                                      points =
                                          getCurrentLives() * correctAnswers;
                                    }
                                    setTotalPoints(points);
                                    _timerController.restart(duration: 15);
                                    // setState(() {});
                                    if (getCurrentNumber() == 13) {
                                      resetCurrentNumber();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Level3(),
                                        ),
                                      );
                                    } else {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              QuestionsLevel2(),
                                        ),
                                      );
                                    }
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
                                    _timerController.restart(duration: 15);
                                    if (getCurrentLives() <= 0) {
                                      resetCurrentLives();
                                      resetCurrentNumber();
                                      resetCurrentPoints();
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

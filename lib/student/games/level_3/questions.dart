// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_2/level_3.dart';
import 'package:iassist/student/games/level_3/level_4.dart';
import 'package:iassist/student/games/level_3/Level3QuestionsAndAnswers.dart';
import 'package:iassist/student/games/Modals.dart';

class QuestionsLevel3 extends StatefulWidget {
  @override
  _QuestionsLevel3State createState() => _QuestionsLevel3State();

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
List<int> number9Answers = [-1, -1, -1];
var triviaFlag = false;
var answer;
var prev_answer;
int prev_multiple_ans_a = -1,
    prev_multiple_ans_b = -1,
    prev_multiple_ans_c = -1;
List<bool> answer_result_multiple = [false, false, false];
var answerResult = null;
int temp = 0;

class _QuestionsLevel3State extends State<QuestionsLevel3> {
  final CountDownController _timerController = CountDownController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current_level = getCurrentLevel();
    var questions = getQuestions();
    var choices = getChoices();
    var images = getImages();
    var triviaImages = getTriviaImages();
    // var trivia = getTrivias();
    var incorrectMessage = "Your answer is incorrect! Try again!";
    return Scaffold(
      // backgroundColor: Color(0xFFBA494B),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // ignore: prefer_const_constructors
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
                        top: size.height * 0.03, right: size.width * 0.77),
                    height: size.height * .08,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/images/games/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.0, -1.0),
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Text(
                      'Level 3\nNewton\'s Second Law of Motion: \nLaw of Acceleration',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.72)),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.108,
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

                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          height: size.height * 0.30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/images/games/level2/Group 59.png'),
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 255),
                          height: size.height * 0.10,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: (triviaFlag)
                                  ? AssetImage(triviaImages[getCurrentNumber()])
                                  : AssetImage(images[getCurrentNumber()]),
                            ),
                          ),
                        ),
                        //points
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "Current Points: " +
                                getCurrentPoints().toString() +
                                "pts",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(top: 15, right: 30),
                          child: Text(
                            "Total Points: " + getTotalPoints().toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
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
                            width: size.width * 0.15,
                            height: size.height * 0.15,
                            duration: 15,
                            autoStart: true,
                            textFormat: 's',
                            controller: _timerController,
                            onComplete: () {
                              print("times up");
                            },
                          ),
                        ),
                        //lives
                        for (int i = 0; i < getCurrentLives(); i++)
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.06,
                            margin:
                                EdgeInsets.only(left: (i + 1) * 30, top: 10),
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
                            height: size.height * 0.03,
                            width: size.width * 0.06,
                            margin:
                                EdgeInsets.only(left: (i + 1) * 30, top: 10),
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
                          padding: const EdgeInsets.only(
                              top: 100, left: 100, right: 10),
                          child: Text(
                            //getting the questions based from what current number is
                            (triviaFlag)
                                ? trivias[getCurrentNumber()]
                                : questions[getCurrentNumber()],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),

                        //choices
                        for (int i = 0;
                            i < choices[getCurrentNumber()].length;
                            i++)
                          Container(
                            width: size.width * 0.74,
                            height: (getCurrentNumber() == 8)
                                ? size.height * 0.06
                                : size.height * 0.07,
                            margin: (getCurrentNumber() == 8)
                                ? EdgeInsets.only(
                                    top: (i + 5) * 52.toDouble(), left: 53.5)
                                : EdgeInsets.only(
                                    top: (i + 5) * 75.toDouble(), left: 53.5),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    offset: Offset(0, 4),
                                    blurRadius: 5.0),
                              ],
                              border: (getCurrentNumber() == 8 &&
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
                              color:
                                  //#Multiple: ini dinagdag ko melvs
                                  (getCurrentNumber() == 8)
                                      ? (i == number9Answers[0])
                                          ? _colorContainerButton[1]
                                          : (i == number9Answers[1])
                                              ? _colorContainerButton[1]
                                              : (i == number9Answers[2])
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
                                  : (getCurrentNumber() == 8 &&
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
                                  : (getCurrentNumber() == 8 &&
                                          nextFlag[0] == 0)
                                      ? null
                                      : () {
                                          //if pushed proceeed set the value of answer
                                          if (getCurrentNumber() == 8) {
                                            if (temp > 2) {
                                              temp = 0;
                                            }
                                            number9Answers[temp] = i;
                                            temp++;
                                          } else {
                                            answer = i;
                                          }
                                          print(number9Answers);
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
                                    fontSize:
                                        (getCurrentNumber() == 8) ? 12 : 14,
                                    // fontWeight: FontWeight.w700,
                                    // fontWeight: FontWeight.w700,
                                    color: (answerResult != null)
                                        ? (answerResult == true &&
                                                i == prev_answer)
                                            ? Color(0xFFBA494B)
                                            : (i == prev_answer)
                                                ? Color(0xFFBA494B)
                                                : Color(0xFFEB9785)
                                        //#Multiple ini si tig dagdag ko melvs
                                        : (getCurrentNumber() == 8)
                                            ? (i == number9Answers[0])
                                                ? _colorContainerText[1]
                                                : (i == number9Answers[1])
                                                    ? _colorContainerText[1]
                                                    : (i == number9Answers[2])
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
                          width: size.width * 0.74,
                          margin: (getCurrentNumber() == 8)
                              ? EdgeInsets.only(top: 575, left: 53.5)
                              : EdgeInsets.only(top: 550, left: 53.5),
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
                                      ? (getCurrentNumber() == 8)
                                          ? () {
                                              //if pushed proceeed to questions

                                              answer_result_multiple =
                                                  checkMultipleAnswers(
                                                      number9Answers,
                                                      getCurrentNumber() + 1);

                                              if (answer_result_multiple[0] &&
                                                  answer_result_multiple[1] &&
                                                  answer_result_multiple[2]) {
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
                                                  number9Answers[0];
                                              prev_multiple_ans_b =
                                                  number9Answers[1];
                                              prev_multiple_ans_c =
                                                  number9Answers[2];
                                              number9Answers = [-1, -1, -1];
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
                                        fontSize: 16,
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
                                    setTotalPoints(getCurrentPoints());
                                    _timerController.restart(duration: 15);
                                   if (getCurrentNumber() == 9) {
                                      resetCurrentNumber();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Level4(),
                                        ),
                                      );
                                    }else{
                                       Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              QuestionsLevel3(),
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
                                        fontSize: 16,
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
                                      resetCurrentPoints();
                                      _timerController.restart(duration: 15);
                              
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
                                        fontSize: 16,
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

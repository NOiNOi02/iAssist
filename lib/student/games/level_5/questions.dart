// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_5/level_5.dart';
import 'package:iassist/student/games/level_5/level_5a.dart';
import 'package:iassist/student/games/level_5/Level5QuestionsAndAnswers.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import '../../../selectionpage.dart';

class QuestionsLevel5 extends StatefulWidget {
  @override
  _QuestionsLevel5State createState() => _QuestionsLevel5State();

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
var incorrectMessage = "Your answer is incorrect! Try again!";

class _QuestionsLevel5State extends State<QuestionsLevel5> {
  final CountDownController _timerController = CountDownController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int current_level = getCurrentLevel();
    var questions = getQuestions();
    var choices = getChoices();
    var images = getImages();
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
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xFFBA494B),
                  image: DecorationImage(
                      image: AssetImage("assets/images/SelectionHeader.png"),
                      fit: BoxFit.cover)),
              child: Text(
                'I-Assist',
                style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'MyFlutterApp'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text(
                'Home',
                style:
                    const TextStyle(fontSize: 20, fontFamily: 'MyFlutterApp'),
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
              leading: Icon(Icons.settings),
              title: const Text(
                'Settings',
                style:
                    const TextStyle(fontSize: 20, fontFamily: 'MyFlutterApp'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: const Text(
                'Exit',
                style: const TextStyle(
                    fontSize: 20,
                    // color: Color(0xFFFFFFFF),
                    fontFamily: 'MyFlutterApp'),
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
                    alignment: Alignment(0.0, -1.0),
                    padding: const EdgeInsets.only(top: 40, left: 35),
                    child: Text(
                      'Level 5',
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
                              setCurrentLives();
                              setCurrentPoints(getCurrentLives());
                              answerResult = false;
                              nextFlag[0] = 0;
                              nextFlag[2] = 1;
                              setState(() {});
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
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 20),
                          height: size.height * 0.30,
                          width: size.width * .70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/images/games/level5/Rectangle 47.png'),
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 250),
                          height: size.height * 0.40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(images[getCurrentNumber()]),
                            ),
                          ),
                        ),
                        //questions
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: const EdgeInsets.only(
                              top: 88, left: 5, right: 100),
                          child: Text(
                            //getting the questions based from what current number is
                            questions[getCurrentNumber()],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 587),
                          height: size.height * 0.10,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/images/games/level5/Rectangle 12.png'),
                            ),
                          ),
                        ),
                        //choices
                        for (int i = 0;
                            i < choices[getCurrentNumber()].length;
                            i++)
                          Container(
                            margin: (i == 0)
                                ? EdgeInsets.only(top: 610, left: 20)
                                : EdgeInsets.only(top: 610, left: 280),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0, 0),
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
                              onPressed: () {
                                answer = i;
                                setState(() {});

                                //if pushed proceeed to questions
                                answerResult =
                                    checkAnswer(answer, getCurrentNumber() + 1);
                                if (answerResult) {
                                  _timerController.restart(duration: 15);
                                  answer = prev_answer = answerResult = null;
                                  triviaFlag = false;
                                  nextFlag = [1, 0, 0];
                                  setCurrentNumber();
                                  setTotalPoints(getCurrentPoints());
                                  if (getCurrentNumber() == 6) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Level5a(),
                                      ),
                                    );
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuestionsLevel5(),
                                    ),
                                  );
                                } else {
                                  //proceed to showing of not correct answer page
                                  setCurrentLives();
                                  setCurrentPoints(getCurrentLives());
                                  answer = prev_answer = answerResult = null;
                                  triviaFlag = false;
                                  nextFlag = [1, 0, 0];
                                  if (getCurrentLives() <= 0) {
                                    resetCurrentLives();
                                    resetCurrentNumber();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Level5(),
                                      ),
                                    );
                                  } else {
                                    setState(() {});
                                  }
                                }
                                //resetting the values
                                prev_answer = answer;
                                answer = null;
                                setState(() {});

                                //if pushed proceeed to questions
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => Level5(),
                                //   ),
                                // );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  choices[getCurrentNumber()][i],
                                  style: TextStyle(
                                    fontSize: 16,
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

// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/level_1/Level1QuestionsAndAnswers.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/level_1.dart';
import 'package:iassist/student/games/level_1/questions.dart';

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
                        top: size.height * 0.03, right: size.width * 0.77),
                    height: size.height * .08,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image:
                            AssetImage('assets/images/games/Level 1/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment(0.0, -1.0),
                    padding: const EdgeInsets.only(top: 40, left: 35),
                    child: Text(
                      'Level 1\nIntroduction to Newton\'s Law of Motion',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
                          alignment: Alignment(0.0, -1.0),
                          padding: EdgeInsets.only(top: size.height * 0.03),
                          child: Text(
                            (getCurrentNumber() == 5)
                                ? 'Very good! \nAll questions done, Character unlocked!'
                                : 'Good work! \n' +
                                    (getCurrentNumber()).toString() +
                                    " question done, keep going",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * newtMargin,
                              left: size.width * newtMarginLeft),
                          height: size.height * newtSize,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: newtAlignment,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  'assets/images/games/Level 1/robot.png'),
                            ),
                          ),
                        ),
                        if (showDialogBox)
                          Container(
                            margin: EdgeInsets.only(
                                top: size.height * 0.15,
                                right: size.width * 0.10),
                            height: size.height * 0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.topRight,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/games/Level 1/dialogBox.png'),
                              ),
                            ),
                          ),
                        if (showDialogBox)
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width*0.41, top: size.height * 0.22),
                            child: Text(
                              "Hi! My name is NEWT. I \nwill be your guide as you\nlearn Newton’s three laws \nof motion.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: (size.height * size.width) * 0.000045,
                                // fontWeight: FontWeight.w700,
                                color: Color(0xFFBA494B),
                              ),
                            ),
                          ),
                        for (int i = 0; i < 5 - getCurrentNumber(); i++)
                          Container(
                            margin: (i == 0)
                                ? EdgeInsets.only(left: 85, top: 252)
                                : (i == 1)
                                    ? EdgeInsets.only(left: 85, top: 375)
                                    : (i == 2)
                                        ? EdgeInsets.only(left: 213, top: 130)
                                        : (i == 3)
                                            ? EdgeInsets.only(
                                                left: 213, top: 375)
                                            : EdgeInsets.only(
                                                left: 213, top: 375),
                            height: size.height * 0.15,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.centerLeft,
                                fit: BoxFit.contain,
                                image: (i == 0)
                                    ? AssetImage(
                                        'assets/images/games/Level 1/rectangleLock.png')
                                    : AssetImage(
                                        'assets/images/games/Level 1/squareLock.png'),
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
                              if(showDialogBox){
                                //continue to level 2
                              }
                              if (getCurrentNumber() != 5) {
                                setTotalPoints(getCurrentPoints());
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuestionsLevel1(),
                                  ),
                                );
                              } else {
                                showDialogBox = true;
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

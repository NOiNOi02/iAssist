// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_2/level_3.dart';
import 'package:iassist/student/games/level_3/level_4.dart';
import 'package:iassist/student/games/level_3/Level3QuestionsAndAnswers.dart';

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
var triviaFlag = false;
var answer;
var prev_answer;
var answerResult = null;

class _QuestionsLevel3State extends State<QuestionsLevel3> {
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
                          margin: const EdgeInsets.only(top: 250),
                          height: size.height * 0.10,
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
                              top: 100, left: 100, right: 10),
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

                        //choices
                        for (int i = 0;
                            i < choices[getCurrentNumber()].length;
                            i++)
                          Container(
                            width: size.width * 0.74,
                            height: (getCurrentNumber() == 8) ? size.height * 0.08: size.height * 0.05,
                            margin: (getCurrentNumber() == 8)
                                ? EdgeInsets.only(
                                    top: (i + 5) * 50.toDouble(), left: 53.5)
                                : EdgeInsets.only(
                                    top: (i + 7) * 50.toDouble(), left: 53.5),
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
                              onPressed: () {
                                //if pushed proceeed to questions
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level3(),
                                  ),
                                );
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
                                    color: Color(0xFFBA494B),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        //next
                        Container(
                          width: size.width * 0.74,
                          margin: const EdgeInsets.only(top: 600, left: 53.5),
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
                              setCurrentNumber();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Level4(),
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

// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_5/level_5.dart';
import 'package:iassist/student/games/level_5/Level5QuestionsAndAnswers.dart';

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

class _QuestionsLevel5State extends State<QuestionsLevel5> {
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
                              border: Border.all(color: Color(0xFFBA494B)),
                              color: Colors.white,
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
                                    builder: (context) => Level5(),
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
                                    fontSize: 12,
                                    // fontWeight: FontWeight.w700,
                                    color: Color(0xFFBA494B),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        //next

                        // Container(
                        //   width: size.width * 0.74,
                        //   margin: const EdgeInsets.only(top: 600, left: 53.5),
                        //   decoration: BoxDecoration(
                        //     boxShadow: [
                        //       BoxShadow(
                        //           color: Colors.black26,
                        //           offset: Offset(0, 4),
                        //           blurRadius: 5.0)
                        //     ],
                        //     gradient: LinearGradient(
                        //       begin: Alignment.topLeft,
                        //       end: Alignment.bottomRight,
                        //       stops: [0.0, 1.0],
                        //       colors: [
                        //         Color(0xFFBA494B),
                        //         Color(0XFFFFB79D),
                        //       ],
                        //     ),
                        //     borderRadius: BorderRadius.circular(5),
                        //   ),
                        //   child: ElevatedButton(
                        //     style: ButtonStyle(
                        //       shape: MaterialStateProperty.all<
                        //           RoundedRectangleBorder>(
                        //         RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(20.0),
                        //         ),
                        //       ),
                        //       backgroundColor:
                        //           MaterialStateProperty.all(Colors.transparent),
                        //       // elevation: MaterialStateProperty.all(3),
                        //       shadowColor:
                        //           MaterialStateProperty.all(Colors.transparent),
                        //     ),
                        //     onPressed: () {
                        //       //if pushed proceeed to questions
                        //       setCurrentNumber();
                        //       Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => QuestionsLevel5(),
                        //         ),
                        //       );
                        //     },
                        //     child: Padding(
                        //       padding: const EdgeInsets.only(
                        //         top: 10,
                        //         bottom: 10,
                        //       ),
                        //       child: Text(
                        //         "NEXT",
                        //         style: TextStyle(
                        //           fontSize: 16,
                        //           // fontWeight: FontWeight.w700,
                        //           color: Colors.white,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
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

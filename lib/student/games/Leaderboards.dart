// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/level_1/Level1QuestionsAndAnswers.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/level_1.dart';
import 'package:iassist/student/games/level_1/questions.dart';
import 'package:iassist/student/games/Modals.dart';
import 'package:iassist/student/studentfrontpage.dart';

class Leaderboards extends StatefulWidget {
  @override
  _LeaderboardsState createState() => _LeaderboardsState();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _LeaderboardsState extends State<Leaderboards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //modal lives
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
              margin: EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/VectorStart.png")),
              ),
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.001, right: size.width * 0.77),
                    height: size.height * .08,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image:
                            AssetImage('assets/images/games/Level1/game1.png'),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                        top: size.height * 0.03, left: size.width * 0.2),
                    child: Text(
                      'Leaderboards',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                            color: Color(0xffFCFBC2),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                                color: Color(0xffBA494B), width: 4.0),
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
                          color: Colors.transparent,
                          padding: EdgeInsets.only(top: 20, left: 50),
                          child: Table(
                            border: TableBorder.all(style: BorderStyle.none),
                            children: [
                              TableRow(children: [
                                Text('Rank',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff6D5D5D))),
                                Text('Player Name',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff6D5D5D))),
                                Text('Score',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff6D5D5D))),
                              ]),
                              //loop through all players and scores
                              for (int i = 0; i < playerNames.length; i++)
                                TableRow(children: [
                                  Text((i + 1).toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffBA494B))),
                                  Text(getPlayerNames(i),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffBA494B))),
                                  Text(getPlayerScores(i).toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffBA494B))),
                                ]),
                            ],
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
                                  builder: (context) => StudentFrontPage(),
                                ),
                              );
                              resetCurrentLives();
                              resetCurrentPoints();
                              resetTotalPoints();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "HOME!",
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

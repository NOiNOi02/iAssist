// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/level_3/level_3a.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/studentfrontpage.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_1/level_1.dart';

import '../../selectionpage.dart';
import 'package:iassist/student/games/level_2/level_2.dart';
import 'package:iassist/student/games/level_2/level_3.dart';
import 'package:iassist/student/games/level_3/level_4.dart';
import 'package:iassist/student/games/level_4/level_4a.dart';
import 'package:iassist/student/games/level_5/level_5.dart';

class GameFrontPage extends StatefulWidget {
  @override
  _GameFrontPageState createState() => _GameFrontPageState();

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _GameFrontPageState extends State<GameFrontPage> {
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StudentFrontPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10, right: (size.width * 1) - 80),
                            height: size.height * .03,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image:
                                    AssetImage('assets/images/games/Back.png'),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          height: size.height * .13,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/games/Game.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: const EdgeInsets.only(
                            top: 225,
                          ),
                          child: Text(
                            'Level ' + (getCurrentLevel()).toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: const EdgeInsets.only(top: 255),
                          child: Text(
                            (getCurrentLevel() == 1)
                                ? 'Introduction to Newton\'s \nLaw of Motion'
                                : (getCurrentLevel() == 2)
                                    ? 'Newton’s First Law of Motion: \nInertia'
                                    : 'Second law of Motion: Law of Acceleration',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .5,
                          margin: const EdgeInsets.only(top: 365, left: 110),
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
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.circular(20),
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
                              //navigate to what level is the current level
                              if (current_level == 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level1(),
                                  ),
                                );
                              } else if (current_level == 2) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level2(),
                                  ),
                                );
                              } else if (current_level == 3) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level3a(),
                                  ),
                                );
                              } else if (current_level == 4) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level4a(),
                                  ),
                                );
                              } else if (current_level == 5) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Level5(),
                                  ),
                                );
                              }
                              // else if (current_level == 3) {
                              //   // Navigator.push(
                              //   //   context,
                              //   //   MaterialPageRoute(
                              //   //     builder: (context) => Level3(),
                              //   //   ),
                              //   );
                              // } else if (current_level == 4) {
                              //   // Navigator.push(
                              //   //   context,
                              //   //   MaterialPageRoute(
                              //   //     builder: (context) => Level4(),
                              //   //   ),
                              //   );
                              // } else if (current_level == 5) {
                              //   // Navigator.push(context, MaterialPageRoute(builder: (context) => Level5(),),);
                              // }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                "START",
                                style: TextStyle(
                                  fontSize: 18,
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

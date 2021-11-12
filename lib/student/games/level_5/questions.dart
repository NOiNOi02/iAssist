// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/student/games/Modals.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:iassist/student/games/game_front_page.dart';
import 'package:iassist/student/games/level.dart';
import 'package:iassist/student/games/level_5/level_5.dart';
import 'package:iassist/student/games/level_5/level_5a.dart';
import 'package:iassist/student/games/level_5/Level5QuestionsAndAnswers.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import '../../../audioplayer_with_local_asset.dart';
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
bool answerResult = false;
var incorrectMessage = "Your answer is incorrect! Try again!";

class _QuestionsLevel5State extends State<QuestionsLevel5> {
  final CountDownController _timerController = CountDownController();
  int _selectedIndex = 0;

  // void onItemTapped(int index, Size size)

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
                  color: Color(0xFFBA494B),
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
                  color: Color(0xFFBA494B),
                ),
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Settings',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF4785B4),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Dark Mode\t\t',
                                        style: TextStyle(
                                          color: Color(0xFF4785B4),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ChangeThemeButtonWidget(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Music \t\t\t\t\t\t\t',
                                        style: TextStyle(
                                          color: Color(0xFF4785B4),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    AudioPlayerWithLocalAsset(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  color: Color(0xFFBA494B),
                ),
                title: Text(
                  'Exit',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onTap: () {
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  });
                  stopMusic();
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
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 6.h, left: 25.w),
                    child: Text(
                      'Level 5\n',
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
                          padding: EdgeInsets.only(top: 1.5.h),
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Current Points: " +
                                      getCurrentPoints().toString() +
                                      "pts",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.sp,
                                    color: Color(0xFFBA494B),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 7.w),
                                alignment: Alignment.topRight,
                                child: Text(
                                  "Total Points: " +
                                      getTotalPoints().toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9.sp,
                                    color: Color(0xFF4785B4),
                                  ),
                                ),
                              ),
                            ],
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
                              showNoTime(context, size);
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
                            margin: EdgeInsets.only(
                                top: SizeConfig.safeBlockHorizontal! * 10,
                                left: SizeConfig.safeBlockHorizontal! * 20),
                            height: SizeConfig.safeBlockVertical! * 15,
                            width: SizeConfig.safeBlockHorizontal! * 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                alignment: Alignment.topLeft,
                                image: AssetImage(
                                    'assets/images/games/level5/Rectangle 47.png'),
                              ),
                            ),
                            child: Stack(
                              children: [
                                //questions
                                Container(
                                    alignment: Alignment(0.0, -1.0),
                                    padding: EdgeInsets.only(
                                        top: 3.5.h, left: 11.w, right: 10.w),
                                    child: AutoSizeText(
                                      //getting the questions based from what current number is
                                      questions[getCurrentNumber()],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: Color(0xFFBA494B),
                                      ),
                                      maxLines: 3,
                                    )),
                              ],
                            )),

                        Container(
                          margin: EdgeInsets.only(
                              top: SizeConfig.safeBlockVertical! * 25),
                          height: SizeConfig.safeBlockVertical! * 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(images[getCurrentNumber()]),
                            ),
                          ),
                        ),
                        //choices
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Text(""),
            label: choices[getCurrentNumber()][0],
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Text(""),
            label: choices[getCurrentNumber()][1],
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFBA494B),
        unselectedItemColor: Color(0xFFBA494B),
        onTap: (int index) {
          if (getCurrentNumber() == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Level5a(),
              ),
            );
          } else {
            setState(() {
              _selectedIndex = index;
              answerResult =
                  checkAnswer(_selectedIndex, getCurrentNumber() + 1);
              if (answerResult) {
                setCurrentNumber();
                setTotalPoints(getCurrentPoints());
                _timerController.restart(duration: 15);
              } else {
                setCurrentLives();
                setCurrentPoints(getCurrentLives());
                answerResult = false;
                if (getCurrentLives() <= 0) {
                  showNoLivesModal(context, size);
                }
              }
            });
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/lessons/2ndLaw/circularMotionAndNewtonsSecondLawOfMotion.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton3rd.dart';
import 'actionForceAndReactionForce.dart';

class LawOfInteraction extends StatefulWidget {
  @override
  _LawOfInteractionState createState() => _LawOfInteractionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _LawOfInteractionState extends State<LawOfInteraction> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'THIRD LAW OF MOTION',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFBA494B),
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThirdNewtonLaw(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 3.5.w)],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: SizeConfig.safeBlockVertical! * 100,
            child: Stack(
              children: <Widget>[
                Container(
                  height: SizeConfig.safeBlockVertical! * 10,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Center(
                    child: Text(
                      "LAW OF INTERACTION",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Color(0xFFBA494B),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  height: SizeConfig.safeBlockVertical! * 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'The Law of Action-Reaction is another name for the Law of Interaction. The relationship between the forces exerted by two bodies is described by this law. According to the law, " for every action, there is an equal and opposite reaction".',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Circular Motion and Newton’s Second Law of Motion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Action Force and Reaction Force',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        unselectedItemColor: Color(0xFFBA494B),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CircularMotionAndNewtonsSecondLawOfMotion(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActionForceAndReactionForce(),
          ),
        );
      }
    });
  }
}

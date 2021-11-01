import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/lessons/3rdLaw/lawOfInteraction.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton2nd.dart';
import 'freeFallAndNewtonsSecondLawOfMotion.dart';

class CircularMotionAndNewtonsSecondLawOfMotion extends StatefulWidget {
  @override
  _CircularMotionAndNewtonsSecondLawOfMotionState createState() =>
      _CircularMotionAndNewtonsSecondLawOfMotionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _CircularMotionAndNewtonsSecondLawOfMotionState
    extends State<CircularMotionAndNewtonsSecondLawOfMotion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'SECOND LAW OF MOTION',
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
              builder: (context) => SecondNewtonLaw(),
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
                      "CIRCULAR MOTION AND NEWTON'S SECOND LAW OF MOTION",
                      textAlign: TextAlign.center,
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
                      'In the case of circular motion, the whirling object accelerates not due to the change in its speed but due to the change in the direction of its velocity.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  height: SizeConfig.safeBlockVertical! * 73,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Consider a stone with a string, to move it in a horizontal circle you have to pull the stone inward towards the center of the circular path. The force coming from the string pulls the object towards the center of its circular motion, if you remove the force (cutting or releasing the string), you will observe that the object will continue to move straight and fly off tangential to the path due to the First Law of Motion. But because of the net force coming to the string, instead of going straight, the object accelerates inwards thereby covering a circular path.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 55.h),
                  height: size.height * .22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image:
                          AssetImage('assets/images/secondLawOfMotion/14.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 76.5.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Source:https://lh3.googleusercontent.com/lVLpm9oNA7icjT3SHgQpVVDhlg2MDn44LVlt27DQRW7hymloFKSAHXMG5mK2IVRHwVqshw=s121',
                      style: TextStyle(
                        fontSize: 6.sp,
                        letterSpacing: 1.4,
                        color: Color(0xFF888888),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: 5.w, right: 5.w, top: 80.h, bottom: 5.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Figure 4. Circular Motion',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 9.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Free Fall and Newton’s Second Law of Motion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Law of Interaction',
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
            builder: (context) => FreeFallAndNewtonsSecondLawOfMotion(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LawOfInteraction(),
          ),
        );
      }
    });
  }
}

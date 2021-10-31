import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton3rd.dart';
import 'interactionForcesVsBalancedForces.dart';
import 'lawOfInteraction.dart';

class ActionForceAndReactionForce extends StatefulWidget {
  @override
  _ActionForceAndReactionForceState createState() =>
      _ActionForceAndReactionForceState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ActionForceAndReactionForceState
    extends State<ActionForceAndReactionForce> {
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
                      "ACTION FORCE AND REACTION FORCE",
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
                  height: SizeConfig.safeBlockVertical! * 57,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Consider the skateboard as shown in Figure 1. The skater exerts a force downward on the portion where the skater is in contact with the ground. At the same time the portion of the ground with which the skater is in contact also exerts a force upward on the skater. The magnitude of the force exerted by the skater is equal to the magnitude of the force exerted by the portion of the ground with which the skater is in contact with. The forces being described are action force and the other is reaction force. Despite the fact that these two pair forces are equal in magnitude and opposite in direction, they do not cancel each other out because these forces is acting on different bodies.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 49.h),
                  height: size.height * .22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image:
                          AssetImage('assets/images/secondLawOfMotion/15.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 70.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Source:https://lh3.googleusercontent.com/ZEFgHBUJ0oZNN0Qb6h_ZcRJCialNH9HYXYWvS0eRvOzSC_6lVRmZjunz_jGqkcLoNM9TlQ=s110',
                      textAlign: TextAlign.center,
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
                      left: 5.w, right: 5.w, top: 74.h, bottom: 5.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Figure 1. Action-reaction forces illustrated by the skater on the ground.',
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
            label: "Law of Interaction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Interaction Forces vs Balanced Forces',
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
            builder: (context) => LawOfInteraction(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InteractionForcesVsBalancedForces(),
          ),
        );
      }
    });
  }
}

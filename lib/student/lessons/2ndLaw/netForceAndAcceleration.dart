import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton2nd.dart';
import 'acceleration.dart';
import 'massAndAcceleration.dart';

class NetForceAndAcceleration extends StatefulWidget {
  @override
  _NetForceAndAccelerationState createState() =>
      _NetForceAndAccelerationState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _NetForceAndAccelerationState extends State<NetForceAndAcceleration> {
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
                      "NET FORCE AND ACCELERATION",
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
                      'With the same mass, when the Net force (total force) increases, the objects acceleration also increases. If the net force is doubled, acceleration also doubled. Analyze the image below. Compare the first car to the second car. What did you observe?',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 25.h),
                  height: size.height * .22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image:
                          AssetImage('assets/images/secondLawOfMotion/3.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 47.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Source:https://lh3.googleusercontent.com/qJtywTEycUljGprYwmw7jXx2WKv5PJVUpXalfLb1f4e88C4CMRRVuBYZbAKCVVq_54ASrA=s113',
                      style: TextStyle(
                        fontSize: 6.sp,
                        letterSpacing: 1.4,
                        color: Color(0xFF888888),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 51.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Figure 1. Relation of force and acceleration',
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
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 30.h),
                  height: SizeConfig.safeBlockVertical! * 100,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Notice that in Figure 1, the first car has a small force and contains small acceleration. However, the second has a doubled force and possesses doubled acceleration. The comparison of the two cars exhibits the direct relationship between force and acceleration.',
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
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Acceleration",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Mass and Acceleration',
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
            builder: (context) => Acceleration(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MassAndAcceleration(),
          ),
        );
      }
    });
  }
}

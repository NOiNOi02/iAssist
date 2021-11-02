import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/lessons/2ndLaw/lawOfAcceleration.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton1st.dart';
import 'rollingFriction.dart';

class FluidFriction extends StatefulWidget {
  @override
  _FluidFrictionState createState() => _FluidFrictionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _FluidFrictionState extends State<FluidFriction> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'FIRST LAW OF MOTION',
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
              builder: (context) => FirstNewtonLaw(),
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
                  height: SizeConfig.safeBlockVertical! * 15,
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 3.h),
                  child: Text(
                    "TYPES OF FRICTION",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  height: SizeConfig.safeBlockVertical! * 20,
                  child: Center(
                    child: Text(
                      "FLUID FRICTION",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Color(0xFFBA494B),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 9.h),
                  height: SizeConfig.safeBlockVertical! * 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "A fluid is a substance that has the ability to flow and conform to the shape of the container in which it is kept. Fluid friction is defined as the force exerted by a liquid or a gas against a moving object. The air resistance force, often known as the drag force, is the frictional force exerted by the air. Due to the existence of fluid friction, walking in a pool of water during a storm is difficult.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 36.h),
                  height: size.height * .22,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image:
                          AssetImage('assets/images/firstLawOfMotion/10.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w, right: 5.w, top: 56.5.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Source:https://lh3.googleusercontent.com/NzqnC5E28vL_AxlcqCSk5L3caQOnVVqyCbQvE6djwpArtLX4i-2Pd3h-VHTcABLjEf_72qA=s157',
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
                  margin: EdgeInsets.only(left: 10.w, right: 5.w, top: 59.5.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Figure 10. Fluid Friction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 9.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w, right: 5.w, top: 65.h),
                  height: SizeConfig.safeBlockVertical! * 15,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Figure 10 exhibits the Fluid friction that is action upon a certain object as it passes or goes through a fluid (air or water). Just like the other types of friction, fluid friction’s direction is opposite to the direction of the motion of the object.',
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
            label: "Rolling Friction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Law of Acceleration',
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
            builder: (context) => RollingFriction(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LawOfAcceleration(),
          ),
        );
      }
    });
  }
}

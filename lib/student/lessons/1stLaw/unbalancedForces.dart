import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton1st.dart';
import 'balancedForces.dart';
import 'friction.dart';

class UnbalancedForces extends StatefulWidget {
  @override
  _UnbalancedForcesState createState() => _UnbalancedForcesState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _UnbalancedForcesState extends State<UnbalancedForces> {
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
            height: SizeConfig.safeBlockVertical! * 110,
            child: Stack(
              children: <Widget>[
                Container(
                  height: SizeConfig.safeBlockVertical! * 10,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Center(
                    child: Text(
                      "UNBALANCED FORCES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Color(0xFFBA494B),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w),
                  height: SizeConfig.safeBlockVertical! * 30,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'If an object initially at rest is under an unbalanced force, it moves in the direction of the unbalanced force. In the other hand, an object in motion will eventually will stop or change its motion if there is an unbalanced force acting on it.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w),
                  height: SizeConfig.safeBlockVertical! * 68,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'As the ball rolls to right as shown in figure 5, friction acts to the left to retard its motion. Because there is no continuous force applied to the ball, there is no force present to balance the frictional force. As a result, the ball started to slow down before coming to a complete stop. The unbalanced opposite force acting between the surfaces of the ball and the desk called friction.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 46.h),
                  height: size.height * .19,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/firstLawOfMotion/5.png'),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 64.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Source:https://lh3.googleusercontent.com/P8EbyE8nXs4uQqWKkJZ5QsiG6DpuBJd047ARK3TJiQs7WGCGOJ0iQbGsA2DFNKFooT72qgw=s130',
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
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 67.h),
                  height: SizeConfig.safeBlockVertical! * 5,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Figure 5. Forces exerted on a rolling ball.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Roboto',
                        fontSize: 9.sp,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 55.h),
                  height: SizeConfig.safeBlockVertical! * 100,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'As the ball rolls to right as shown in figure 5, friction acts to the left to retard its motion. Because there is no continuous force applied to the ball, there is no force present to balance the frictional force. As a result, the ball started to slow down before coming to a complete stop. The unbalanced opposite force acting between the surfaces of the ball and the desk called friction.',
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
            label: "Balanced Forces",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Friction',
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
            builder: (context) => BalancedForces(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Friction(),
          ),
        );
      }
    });
  }
}

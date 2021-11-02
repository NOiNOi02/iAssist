import 'package:flutter/material.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

import '../Newton1st.dart';
import 'inertia.dart';
import 'unbalancedForces.dart';

class BalancedForces extends StatefulWidget {
  @override
  _BalancedForcesState createState() => _BalancedForcesState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _BalancedForcesState extends State<BalancedForces> {
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
              height: SizeConfig.safeBlockVertical! * 130,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: SizeConfig.safeBlockVertical! * 10,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Center(
                      child: Text(
                        "BALANCE FORCES",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                          color: Color(0xFFBA494B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 5.h),
                    height: SizeConfig.safeBlockVertical! * 33,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'If two forces acting on an object are equal in magnitude but in opposite direction, they are considered balanced forces. If the forces acting on an object are balanced or its algebraic sum equates to zero, the object stays at rest.',
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
                    height: size.height * .19,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image:
                            AssetImage('assets/images/firstLawOfMotion/3.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 42.h),
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Source:https://lh3.googleusercontent.com/apvOIzBv5x2fl0z6L2T4oEi5leKAWUPZGdDB33RxOQvR59LnWOpwbh-cW5XSllt-CtXTOA=s153m',
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
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 0.h),
                    height: SizeConfig.safeBlockVertical! * 99,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Figure 3. A book affected by two different forces with equal magnitude and opposite direction- Balanced forces.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 9.sp,
                          fontFamily: 'Roboto',
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 21.h),
                    height: SizeConfig.safeBlockVertical! * 100,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Visualize a physics book on a tabletop. The book is affected by two forces. One force, Earth's gravitational attraction, pulls downward. The table's pressure on the book (sometimes called a normal force) pushes the book higher. The equal magnitude and opposite direction of these two forces balance each other. Balanced forces make the book at rest and these forces must lie along the same line. The book is deemed to be balanced. There is no uneven or unbalanced force acting on the book, therefore it stays in motion. When all the forces acting on an object are balanced, the object is at rest and does not accelerate.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 11.sp,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 90.h),
                    height: size.height * .19,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image:
                            AssetImage('assets/images/firstLawOfMotion/4.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 109.h),
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Source: https://lh3.googleusercontent.com/6psRlTrRCa2f_cjhX5wfSdoXl1CE-RcGkQkIvSJXjuFJzP4DS6WNy9Keu6qOyZrFrWd5=s142',
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
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 113.h),
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Figure 4. Showing a balanced force acting on the car.',
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
                    margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 118.h),
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Figure 1.4 depicts balanced forces. Balanced forces result in a force of zero. The car above, acted on by two balanced forces, remains in an equilibrium state. As a result, there is no difference in speed. In addition, balanced forces make objects to continue moving at constant velocity.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 11.sp,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Inertia",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Unbalanced Forces',
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
            builder: (context) => Inertia(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UnbalancedForces(),
          ),
        );
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton1st.dart';
import 'slidingFriction.dart';
import 'unbalancedForces.dart';

class Friction extends StatefulWidget {
  @override
  _FrictionState createState() => _FrictionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _FrictionState extends State<Friction> {
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
            fontSize: 16,
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
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "FRICTION",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFBA494B),
                ),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Friction is the force that acts opposite the direction of motion. It brings object to slow down or in a rest position.',
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 25, right: 25),
            height: size.height * .22,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/firstLawOfMotion/6.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Source:https://lh3.googleusercontent.cm/TKFs6G2pYTCEwDtl7qgFsAxix0ObrVvxkFpEMgnBrwy4t7G5_UHxL81XtNsPHjEdHB8Pw=s170',
                style: const TextStyle(
                  fontSize: 9,
                  letterSpacing: 1.4,
                  color: Color(0xFF888888),
                ),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 25),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Figure 6. Friction',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  letterSpacing: 1.4,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Unbalanced Forces",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Sliding Friction',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color(0xFFFFFFFF),
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
            builder: (context) => UnbalancedForces(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SlidingFriction(),
          ),
        );
      }
    });
  }
}

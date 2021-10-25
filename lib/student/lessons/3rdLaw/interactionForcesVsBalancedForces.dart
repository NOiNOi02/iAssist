import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton3rd.dart';
import 'actionForceAndReactionForce.dart';
import 'exampleOfBalancedForce.dart';

class InteractionForcesVsBalancedForces extends StatefulWidget {
  @override
  _InteractionForcesVsBalancedForcesState createState() =>
      _InteractionForcesVsBalancedForcesState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _InteractionForcesVsBalancedForcesState
    extends State<InteractionForcesVsBalancedForces> {
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
              builder: (context) => ThirdNewtonLaw(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Center(
              child: Text(
                "INTERACTION FORCES VS BALANCED FORCES",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFBA494B),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'The difference between the forces related to Law of Interaction and forces in a balanced state are as follows:',
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
                image: AssetImage('assets/images/secondLawOfMotion/16.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Source:https://lh3.googleusercontent.com/2ok8jEccmnjzhI5TC061WMr63B9HRiQoJ5ghkTWSzoGJIx14BSxMYnV1DF-7zvWWHuIdg=s170',
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
                'Table 1. Differences between interaction and balanced forces.',
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
            icon: Icon(Icons.arrow_back),
            label: "Action Force and Balanced Force",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Example of Balanced Force',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color(0xFFBA494B),
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
            builder: (context) => ActionForceAndReactionForce(),
          ),
        );
      }
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExampleOfBalancedForce(),
          ),
        );
      }
    });
  }
}

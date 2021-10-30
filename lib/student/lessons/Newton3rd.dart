import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../studentlessons.dart';
import '3rdLaw/actionForceAndReactionForce.dart';
import '3rdLaw/exampleOfBalancedForce.dart';
import '3rdLaw/interactionForcesVsBalancedForces.dart';
import '3rdLaw/lawOfInteraction.dart';

class ThirdNewtonLaw extends StatefulWidget {
  @override
  _ThirdNewtonLawState createState() => _ThirdNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ThirdNewtonLawState extends State<ThirdNewtonLaw> {
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
              builder: (context) => StudentLessons(),
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
              "NEWTON'S LAW OF MOTION",
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
              "Sir Isaac Newton (1643-1727) is an English physicist and mathematician known for his discoveries in Optics and his formulation of the three laws of motions which become the basic principles of the modern physics. Newton published these laws of motion in 1687 in his book ‘Principia Mathematica’. His discoveries led to scientific revolution that led to the fundamental understanding of how bodies move through physical space.",
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
                letterSpacing: 1.4,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Newton's Third Law of Motion",
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF747474),
              ),
            ),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LawOfInteraction(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color(0xFFBA494B).withOpacity(0.47)),
              )),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Text("Law of Interaction",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Notes in Law of Interaction",
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF747474),
              ),
            ),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActionForceAndReactionForce(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color(0xFFBA494B).withOpacity(0.47)),
              )),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Text("Action Force and Reaction Force",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InteractionForcesVsBalancedForces(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color(0xFFBA494B).withOpacity(0.47)),
              )),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Text("Interaction Forces vs Balanced Forces",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExampleOfBalancedForce(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                    width: 1.0, color: Color(0xFFBA494B).withOpacity(0.47)),
              )),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Text("Example of Balance Force",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 18,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}

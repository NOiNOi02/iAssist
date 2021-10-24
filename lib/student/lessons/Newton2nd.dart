import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '2ndLaw/acceleration.dart';
import '2ndLaw/circularMotionAndNewtonsSecondLawOfMotion.dart';
import '2ndLaw/freeFallAndNewtonsSecondLawOfMotion.dart';
import '2ndLaw/lawOfAcceleration.dart';
import '2ndLaw/massAndAcceleration.dart';
import '2ndLaw/netForceAndAcceleration.dart';
import '2ndLaw/sampleMathematicalProblem.dart';
import '2ndLaw/unitOfForce.dart';

class SecondNewtonLaw extends StatefulWidget {
  @override
  _SecondNewtonLawState createState() => _SecondNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SecondNewtonLawState extends State<SecondNewtonLaw> {
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
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFBA494B),
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.pop(context),
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
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Newton's Second Law of Motion",
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
                  builder: (context) => LawOfAcceleration(),
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
                    child: Text("Law of Acceleration",
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
              "Notes in Law of Acceleration",
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
                  builder: (context) => Acceleration(),
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
                    child: Text("Acceleration",
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
              "Relationship of ",
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
                  builder: (context) => NetForceAndAcceleration(),
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
                    child: Text("Net Force and Acceleration",
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
                  builder: (context) => MassAndAcceleration(),
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
                    child: Text("Mass and Acceleration",
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
                  builder: (context) => UnitOfForce(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8, left: 35.0),
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
                    // margin: const EdgeInsets.only(),
                    child: Text("- Units of Force",
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
                  builder: (context) => SampleMathematicalProblem(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8, left: 35.0),
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
                    // margin: const EdgeInsets.only(),
                    child: Text("- Sample Mathematical Problem",
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
                  builder: (context) => FreeFallAndNewtonsSecondLawOfMotion(),
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
                    child: Text("Free Fall and Newton's Second Law of Motion",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 16,
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
                  builder: (context) =>
                      CircularMotionAndNewtonsSecondLawOfMotion(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: size.width * .9,
              margin: const EdgeInsets.only(top: 8, left: 35.0),
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
                    // margin: const EdgeInsets.only(),
                    child: Text(
                        "- Circular Motion and Newton’s Second Law of Motion.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFBA494B),
                          fontSize: 14,
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

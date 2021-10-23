import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import '1stLaw/Friction.dart';
import '1stLaw/balancedForces.dart';
import '1stLaw/inertia.dart';
import '1stLaw/lawOfIntertia.dart';
import '1stLaw/slidingFriction.dart';
import '1stLaw/unbalancedForces.dart';

class FirstNewtonLaw extends StatefulWidget {
  @override
  _FirstNewtonLawState createState() => _FirstNewtonLawState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _FirstNewtonLawState extends State<FirstNewtonLaw> {
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
              "Newton's First Law of Motion",
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
                  builder: (context) => LawOfInertia(),
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
                    child: Text("Law of Inertia",
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
              "Notes in Law of Intertia",
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
                  builder: (context) => Inertia(),
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
                    child: Text("Inertia",
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
                  builder: (context) => BalancedForces(),
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
                    child: Text("Balance Forces",
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
                  builder: (context) => UnbalancedForces(),
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
                    child: Text("Unbalance Forces",
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
                  builder: (context) => Friction(),
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
                    child: Text("Friction",
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
              "Types of Friction",
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
                  builder: (context) => SlidingFriction(),
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
                    child: Text("Sliding Friction",
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FirstNewtonLaw(),
              //   ),
              // );
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
                    child: Text("Static Friction",
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FirstNewtonLaw(),
              //   ),
              // );
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
                    child: Text("Rolling Friction",
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FirstNewtonLaw(),
              //   ),
              // );
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
                    child: Text("Fluid Friction",
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

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton2nd.dart';
import 'freeFallAndNewtonsSecondLawOfMotion.dart';
import 'unitOfForce.dart';

class SampleMathematicalProblem extends StatefulWidget {
  @override
  _SampleMathematicalProblemState createState() =>
      _SampleMathematicalProblemState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SampleMathematicalProblemState extends State<SampleMathematicalProblem> {
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
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondNewtonLaw(),
            ),
          ),
        ),
        actions: <Widget>[ChangeThemeButtonWidget(), SizedBox(width: 25)],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              "Mass and Acceleration",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Sample Mathematical Problem",
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
                'Sample Problem 1.',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Suppose a ball of mass 0.60 kg is hit with a force of 12 N. Its acceleration will be:',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
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
                image: AssetImage('assets/images/secondLawOfMotion/10.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'a = 20 m/s^2',
                textAlign: TextAlign.left,
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
                'Therefore,the accelertion of the ball will be 20(m/s^2)',
                textAlign: TextAlign.left,
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
                'Sample Problem 2.',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'How much force is needed to accelerate a 50 kg sled at 2 m/s^2?',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
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
                image: AssetImage('assets/images/secondLawOfMotion/11.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Therefore, 100 N is the force is needed to accelerate a 50 kg sled at 2 m/s^2.',
                textAlign: TextAlign.left,
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
                'Sample Problem 3.',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'A bowling ball rolled with a force of 18 N which accelerates at a rate of 6 m/s^2. What is the mass of the ball?',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
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
                image: AssetImage('assets/images/secondLawOfMotion/12.png'),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Therefore,the mass of the rolling ball is 3 kg.',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.4,
                ),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_previous),
            label: "Unit of Forces",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Free Fall and Newton’s Second Law of Motion',
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
            builder: (context) => UnitOfForce(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FreeFallAndNewtonsSecondLawOfMotion(),
          ),
        );
      }
    });
  }
}

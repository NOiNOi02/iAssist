import 'package:flutter/material.dart';
import 'package:iassist/student/lessons/3rdLaw/interactionForcesVsBalancedForces.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton3rd.dart';

class ExampleOfBalancedForce extends StatefulWidget {
  @override
  _ExampleOfBalancedForceState createState() => _ExampleOfBalancedForceState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ExampleOfBalancedForceState extends State<ExampleOfBalancedForce> {
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
                "EXAMPLE OF BALANCE FORCE",
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
                "Assume you're in a tug-of-war with your team starts by pulling with all its power. But the opposing team is also pushing hard and in the opposite direction. The flag in the rope's center doesn't move. The flag does not move since the force applied by your team is equivalent to the opposing side's force. The forces are opposing. The rope's forces are balanced. When the forces are balanced, the rope's flag will not move. A team must use more force than the other to win.",
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
                image: AssetImage('assets/images/secondLawOfMotion/17.png'),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 25),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Figure 2. Children playing tug-of-war',
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
            label: "Interaction Forces vs Balanced Forces",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFFBA494B),
        onTap: _onItemTapped,
        // unselectedItemColor: Color(0xFFBA494B),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InteractionForcesVsBalancedForces(),
          ),
        );
      }
      // if (index == 1) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => ExampleOfBalancedForce(),
      //     ),
      //   );
      // }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton2nd.dart';
import 'lawOfAcceleration.dart';
import 'netForceAndAcceleration.dart';

class Acceleration extends StatefulWidget {
  @override
  _AccelerationState createState() => _AccelerationState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _AccelerationState extends State<Acceleration> {
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
            child: Center(
              child: Text(
                "ACCELERATION",
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
                'The rate of change in the velocity of an object is acceleration. If the net force acting on an object is constant, its velocity changes at a constant rate over time. It is considered to be moving with constant acceleration. If the force acting on the object is changed, its acceleration will also change.',
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
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
            label: "Law of Acceleration",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Net Forces and Acceleration',
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
            builder: (context) => LawOfAcceleration(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NetForceAndAcceleration(),
          ),
        );
      }
    });
  }
}

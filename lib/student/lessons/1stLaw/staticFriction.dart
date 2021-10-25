import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton1st.dart';
import 'rollingFriction.dart';
import 'slidingFriction.dart';

class StaticFriction extends StatefulWidget {
  @override
  _StaticFrictionState createState() => _StaticFrictionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _StaticFrictionState extends State<StaticFriction> {
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
            child: Text(
              "TYPES OF FRICTION",
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "STATIC FRICTION",
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
                "Static friction is the force of friction between an object and the surface it is put on or a force acting on stationary or at rest object. When a force is exerted to an object sitting on a surface, it must be greater than the surface's friction force. It also reduces friction. Static friction is found in walking, rock climbing, etc.",
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
                image: AssetImage('assets/images/firstLawOfMotion/8.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Source:https://lh3.googleusercontent.com/ThTZkL1vu17Gpi7pPPelpQcR1Yqg3tU5OXt6biBDobTmMMIbtAk91Aax1TN5nxQ4lvt6vqY=s114',
                style: const TextStyle(
                  fontSize: 9,
                  letterSpacing: 1.4,
                  color: Color(0xFF888888),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Figure 8. Frictional/Static Force acting on sofa',
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
          Container(
            margin:
                const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Illustrated in Figure 8, a sofa stationary on the ground is acted upon by a frictional/static force.',
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
            icon: Icon(Icons.arrow_back),
            label: "Sliding Friction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Rolling Friction',
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
            builder: (context) => SlidingFriction(),
          ),
        );
      }
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RollingFriction(),
          ),
        );
      }
    });
  }
}

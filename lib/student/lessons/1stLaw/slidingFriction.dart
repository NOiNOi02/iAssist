import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

import '../Newton1st.dart';
import 'friction.dart';
import 'staticFriction.dart';

class SlidingFriction extends StatefulWidget {
  @override
  _SlidingFrictionState createState() => _SlidingFrictionState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _SlidingFrictionState extends State<SlidingFriction> {
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
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "SLIDING FRICTION",
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
                'When one object is moved over the surface of another, sliding friction occurs or simply a force acting on objects sliding on a surface. It has a lower frictional force than static friction. Kinetic or dynamic friction are other terms for sliding friction. Sliding friction is exhibited by dragging a block on the table, writing, playing on a slide, and so on.',
                textAlign: TextAlign.justify,
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
                image: AssetImage('assets/images/firstLawOfMotion/7.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Source:https://lh3.googleusercontent.com/ARh_uWH7sz6QO7JOlwgZTjvOpi6H1nWuE2lIuFi-4YMAkpIrsdB9KB35LHRLLwehrIrHdA=s151',
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
                'Figure 7. Sliding Force on a sled',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  letterSpacing: 1.4,
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
                'A sliding sled, shown in Figure 7, is acted upon by two opposite forces. The first force is the force similar to the direction motion (upper right arrow). On the other hand, the other force is the static friction (lower right arrow).',
                textAlign: TextAlign.justify,
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
            label: "Friction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.skip_next),
            label: 'Static Friction',
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
            builder: (context) => Friction(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StaticFriction(),
          ),
        );
      }
    });
  }
}

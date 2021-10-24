import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

class ActionForceAndReactionForce extends StatefulWidget {
  @override
  _ActionForceAndReactionForceState createState() =>
      _ActionForceAndReactionForceState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _ActionForceAndReactionForceState
    extends State<ActionForceAndReactionForce> {
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
                "ACTION FORCE AND REACTION FORCE",
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
                'Consider the skateboard as shown in Figure 1. The skater exerts a force downward on the portion where the skater is in contact with the ground. At the same time the portion of the ground with which the skater is in contact also exerts a force upward on the skater. The magnitude of the force exerted by the skater is equal to the magnitude of the force exerted by the portion of the ground with which the skater is in contact with. The forces being described are action force and the other is reaction force. Despite the fact that these two pair forces are equal in magnitude and opposite in direction, they do not cancel each other out because these forces is acting on different bodies.',
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
                image: AssetImage('assets/images/secondLawOfMotion/15.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3, left: 25, right: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Source:https://lh3.googleusercontent.com/ZEFgHBUJ0oZNN0Qb6h_ZcRJCialNH9HYXYWvS0eRvOzSC_6lVRmZjunz_jGqkcLoNM9TlQ=s110',
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
                'Figure 1. Action-reaction forces illustrated by the skater on the ground.',
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
    );
  }
}

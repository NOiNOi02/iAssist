// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

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
        title: 
          Text('1ST LAW OF MOTION',
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
          icon: Icon(Icons.arrow_back_rounded,
          color: Colors.white), 
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          ChangeThemeButtonWidget(),
          SizedBox(width: 25)
        ], 
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
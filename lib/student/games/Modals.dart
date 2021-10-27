
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

 void showLivesModal(BuildContext context, Size size,) {
      showGeneralDialog(
        barrierLabel: "Barrier",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: Duration(milliseconds: 700),
        context: context,
        pageBuilder: (_, __, ___) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: size.height * 0.35,
                width: size.width * 0.7,
                margin: EdgeInsets.only(
                    bottom: size.height * 0.3, left: 12, right: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFFCFBC2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.08,
                          left: size.width * 0.09,
                          right: size.width * 0.09,
                          bottom: size.height * 0.04),
                      decoration: BoxDecoration(
                        color: Color(0xFFFEC192),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin:
                          EdgeInsets.only(top: 100, left: size.width * 0.23),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/games/heart.png'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'You will have 3 lives \nin this level',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xffCB2D3F),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 200),
                      child: Text(
                        'Lives Remaining',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xffCB2D3F),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 130),
                      child: Text(
                        '3',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(top:size.height * 0.30, left: size.width*0.22),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4),
                              blurRadius: 5.0)
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Color(0xFFBA494B),
                            Color(0XFFFFB79D),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //#TODO: DI ko na ffloat si button, naccut kapag tg babaan ko ang margin
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          //if pushed proceeed to questions
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "Okay",
                            style: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        },
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
            child: child,
          );
        },
      );
    }


     void showNoLivesModal(BuildContext context, Size size) {
      showGeneralDialog(
        barrierLabel: "Barrier",
        barrierDismissible: false,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: Duration(milliseconds: 700),
        context: context,
        pageBuilder: (_, __, ___) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: size.height * 0.35,
                width: size.width * 0.7,
                margin: EdgeInsets.only(
                    bottom: size.height * 0.3, left: 12, right: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFFCFBC2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.08,
                          left: size.width * 0.09,
                          right: size.width * 0.09,
                          bottom: size.height * 0.04),
                      decoration: BoxDecoration(
                        color: Color(0xFFFEC192),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      margin:
                          EdgeInsets.only(top: 100, left: size.width * 0.23),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/games/heart.png'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'You ran out of lives!',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xffCB2D3F),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 200),
                      child: Text(
                        'No lives remaining',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xffCB2D3F),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 130),
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.3,
                      height: size.height * 0.05,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(top:size.height * 0.30, left: size.width*0.22),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4),
                              blurRadius: 5.0)
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Color(0xFFBA494B),
                            Color(0XFFFFB79D),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //#TODO: DI ko na ffloat si button, naccut kapag tg babaan ko ang margin
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          //if pushed proceeed to questions
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Text(
                            "Okay",
                            style: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        },
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
            child: child,
          );
        },
      );
    }
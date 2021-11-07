// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iassist/provider/theme_provider.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/selectionpage.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:iassist/audioplayer_with_local_asset.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: Sizer(
          builder: (context, orientation, deviceType) {
            final themeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              themeMode: themeProvider.themeMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              home: HomePage(),
            );
          },
        ),
      );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  // This variable will tell you whether the application is in foreground or not.
  bool _first = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   super.didChangeAppLifecycleState(state);
  //   _isInForeground = state == AppLifecycleState.resumed;
  //   if (!_isInForeground) {
  //     pauseMusic();
  //   } else {
  //     resumeMusic();
  //   }
  // }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        resumeMusic();
        //Play the Music
        break;
      
      case AppLifecycleState.paused:
        pauseMusic();
        break;
      
      case AppLifecycleState.inactive:
        // TODO: Handle this case.
        break;
      case AppLifecycleState.detached:
        // TODO: Handle this case.
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if(_first == true){
    playMusic();
    _first=false;
    }
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/VectorStart.png'),
                alignment: new Alignment(2, 0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical! * 55,
                left: 17.w,
                right: 17.w),
            width: SizeConfig.safeBlockHorizontal! * 66,
            height: SizeConfig.safeBlockVertical! * 66,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/Ellipse1.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical! * 55,
                left: 20.w,
                right: 20.w),
            width: SizeConfig.safeBlockHorizontal! * 55,
            height: SizeConfig.safeBlockVertical! * 55,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical! * 26, left: 4.w),
                child: Text(
                  'Welcome to I-Assist',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 4.w), //top: SizeConfig.safeBlockVertical! * 32,
                child: Text(
                  'An offline educational application\ndesigned for Eight Graders to\nlearn more about the concept\nof Newton\'s Law of Motion.',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 1.h,
                ), //top: SizeConfig.safeBlockVertical! * 47,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectionPage(),
                      ),
                    );
                  },
                  child: Text("Let's Start!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                      )),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2.5, color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    padding: EdgeInsets.only(
                        left: 6.w, right: 6.w, top: 1.7.h, bottom: 1.7.h),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

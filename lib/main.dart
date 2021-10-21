import 'package:flutter/material.dart';
import 'package:iassist/provider/theme_provider.dart';
import 'package:iassist/selectionpage.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: HomePage(),
      );
    },
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
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
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
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/Vector2.png'),
                alignment: new Alignment(3.2, 0),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/Bubbles.png'),
                alignment: new Alignment(-4.3, 0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 332, left: 20),
            child:OutlinedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectionPage(),),);
            }, child: Text("Let\'s Start!",  
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                )),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                    width: 2.5,
                    color: Colors.white
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      
                    ),padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 12, bottom: 12),
                  ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 430, left: 50),
            width: 305,
            height: 305,    
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/Ellipse1.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 452, left: 65),
            width: 259,
            height: 259,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200, left:12),
            child: Text('Welcome to I-Assist', 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 240, left:17),
            child: Text('An offline educational application\ndesigned for Eight Graders to\nlearn more about the concept\nof Newton\'s Law of Motion.',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
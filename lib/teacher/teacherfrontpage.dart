import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/teacher/LessonPlans.dart';
import 'package:iassist/teacher/PPT.dart';
import 'package:iassist/teacher/Worksheet.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

class TeacherFrontPage extends StatefulWidget {
  @override
  _TeacherFrontPageState createState() => _TeacherFrontPageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _TeacherFrontPageState extends State<TeacherFrontPage>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: 
          Text('TEACHER MODE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFBA494B),
                fontSize: 16,
              ),
            ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          // alignment: center,
          icon: Icon(Icons.arrow_back_rounded,
          color: Color(0xFFBA494B)), 
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          ChangeThemeButtonWidget(),
          SizedBox(width: 25)
        ], 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height,
              child: Stack(
                children:<Widget>[
                  Container(
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/header.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.9),
                          spreadRadius: 3,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.108,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 45),
                          height: size.height * 0.63,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                // spreadRadius: 4,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          height: size.height * .12,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/TeacherPic.png'),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 160,
                            left: 130),
                          child: Text('Hello Teacher!',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 190, left: 60),
                          child: Text('You can view the Lesson Plans, Powerpoint\nPresentations, and Worksheets here.', 
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFFFB79D),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: const EdgeInsets.only(top: 250, left: 82),
                          child:OutlinedButton.icon(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LessonPlans(),),);
                          },
                            icon: Icon(MyFlutterApp.lessonplans, color: Color(0xFFBA494B),), 
                            label: Text("LESSON PLANS",
                              textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 20,
                              )),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                  width: 2.5,
                                  color: Color(0xFFBA494B),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    
                                  ),padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20, bottom: 20),
                                ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: const EdgeInsets.only(top: 332, left: 82),
                          child:OutlinedButton.icon(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PPT(),),);
                          },
                            icon: Icon(MyFlutterApp.ppt, color: Color(0xFFBA494B)), 
                            label: Text("POWERPOINT\nPRESENTATIONS",
                              // textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 20,
                              )),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                  width: 2.5,
                                  color: Color(0xFFBA494B),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    
                                  ),padding: EdgeInsets.only(left: 10.0, top: 20, bottom: 20),
                                ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: const EdgeInsets.only(top: 436, left: 82),
                          child:OutlinedButton.icon(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Worksheet(),),);
                          },
                            icon: Icon(MyFlutterApp.wrksht, color: Color(0xFFBA494B)), 
                            label: Text("WORKSHEETS",
                              textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 20,
                              )),
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                  width: 2.5,
                                  color: Color(0xFFBA494B),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    
                                  ),padding: EdgeInsets.only(right: 15.0, top: 20, bottom: 20),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left:35.0, right: 35.0, bottom: 45.0),
        child: Container(
          child: TabBar(
            labelColor: Color(0xFF4785B4),
            unselectedLabelColor: Color(0xFFBA494B),
            labelStyle:TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold) ,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xFF4785B4), width: 0.0)
            ),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home_rounded),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
              Tab(
                icon: Icon(Icons.exit_to_app_outlined),
                text: 'Exit',
              ),
            ],
            controller:  _tabController,
          ),
              decoration: BoxDecoration(  
                color: Theme.of(context).primaryColor,
            // border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),        
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500.withOpacity(.7),
                      spreadRadius: 2,
                      blurRadius: 5,
                      
                    ),
                  ],
                ),         
        ),
      ),
    );
  }
}
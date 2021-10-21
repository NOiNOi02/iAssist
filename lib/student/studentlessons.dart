import 'package:flutter/material.dart';
import 'package:iassist/student/lessons/Newton1st.dart';
import 'package:iassist/student/lessons/Newton2nd.dart';
import 'package:iassist/student/lessons/Newton3rd.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

class StudentLessons extends StatefulWidget {
  @override
  _StudentLessonsState createState() => _StudentLessonsState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _StudentLessonsState extends State<StudentLessons> with SingleTickerProviderStateMixin {
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
          Text('STUDENT MODE',
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
                          height: size.height * 0.58,
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
                          margin: EdgeInsets.only(top: 20),
                          height: size.height * .14,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/StudentLessonsPic.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, -1.0),
                          padding: const EdgeInsets.only(top: 160,),
                          child: Text('Newton’s\nLaw of Motion',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * .6,
                          margin: const EdgeInsets.only(top: 230, left: 82),
                          child:OutlinedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstNewtonLaw(),),);
                          },
                            child: Text("1st Law of Motion",
                              textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 21,
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
                          margin: const EdgeInsets.only(top: 310, left: 82),
                          child:OutlinedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondNewtonLaw(),),);
                          },
                            child: Text("2nd Law of Motion",
                              textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 21,
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
                          margin: const EdgeInsets.only(top: 390, left: 82),
                          child:OutlinedButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdNewtonLaw(),),);
                          },
                            child: Text("3rd Law of Motion",
                              textAlign: TextAlign.center,   
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBA494B),
                                fontSize: 21,
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
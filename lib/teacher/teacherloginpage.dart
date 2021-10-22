import 'package:flutter/material.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/teacher/teacherfrontpage.dart';

class TeacherLoginPage extends StatefulWidget{
  @override
  _TeacherLoginPageState createState() => _TeacherLoginPageState();
}

class _TeacherLoginPageState extends State<TeacherLoginPage> with SingleTickerProviderStateMixin{
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
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      // backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height,
              child: Stack(
                children:<Widget>[
                  Container(
                    height: size.height * 0.29,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/SelectionHeader.png'),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.8),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left:22),
                    child: Text('Welcome to I-Assist', 
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 68, left:25),
                    child: Text('Offline educational application designed\nfor Eight Graders to learn more about\nthe concept of Newton’s Law of Motion',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.274,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 45),
                          height: size.height * 0.55,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade500.withOpacity(.5),
                                spreadRadius: 4,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: size.height * .1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/LetsGetStarted.png'),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0,-1.0),
                          padding: const EdgeInsets.only(top: 100),
                          child: Text('Welcome', 
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0,-1.0),
                          padding: const EdgeInsets.only(top: 130),
                          child: Text('Please Login to your account.', 
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFFFB79D),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0,-1.0),
                          padding: const EdgeInsets.only(top: 170, right: 170),
                          child: Text('Username', 
                            style: const TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        RoundedInputField(
                          onChanged: (value) {},
                          hintText: 'Enter username or E-mail',
                        ),
                        Container(
                          alignment: Alignment(0.0,-1.0),
                          padding: const EdgeInsets.only(top: 260, right: 170),
                          child: Text('Password', 
                            style: const TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFFBA494B),
                            ),
                          ),
                        ),
                        RoundedPasswordField(
                          hintText: 'Enter Password',
                          onChanged: (value) {},
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xFFBA494B),
                                Color(0xFFFFB79D),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.8),
                                spreadRadius: 1,
                                offset: Offset(1,1),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          alignment: Alignment(0.0,-1.0),
                          width: 100,
                          margin: EdgeInsets.only(top: 360, left: size.width*.37),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherFrontPage(),),);
                          },
                            child: Text('Login'),
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
                icon: Icon(Icons.info_outline),
                text: 'About',
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

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
      return Container(
      padding: EdgeInsets.only(left: 10),
      width: size.width * 0.6,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: const Color(0xFFBA494B)),
        borderRadius: BorderRadius.circular(3), 
      ),
      child: child,
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    margin: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: size.height * 0.22),
    child: TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFFBA494B),
          ),
          hintText: hintText,
        ),
      ),
    ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    this.icon = Icons.vpn_key_sharp,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
    margin: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: size.height * 0.325),
    child: TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFFBA494B,),
          ),
          suffixIcon: Icon(
            Icons.visibility_outlined,
            color: Color(0xFFBA494B),
          ),
          hintText: hintText,
        ),
      ),
    ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';

class PPT extends StatefulWidget {
  @override
  _PPTState createState() => _PPTState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _PPTState extends State<PPT> with SingleTickerProviderStateMixin {
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

      ),
    );
  }
}
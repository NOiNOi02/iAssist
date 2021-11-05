// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iassist/audioplayer_with_local_asset.dart';
import 'package:iassist/icon.dart';
import 'package:iassist/responsive/sizeconfig.dart';
import 'package:iassist/student/games/level_1/NewtPuzzle.dart';
import 'package:iassist/student/studentfrontpage.dart';
import 'package:iassist/teacher/teacherloginpage.dart';
import 'package:iassist/widget/change_theme_button_widget.dart';
import 'package:sizer/sizer.dart';

class SelectionPage extends StatefulWidget{
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> with SingleTickerProviderStateMixin{
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
                    height: SizeConfig.safeBlockVertical! * 30,
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
                          spreadRadius: 3,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.h, left:6.w),
                    child: Text('Welcome to I-Assist', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11.2.h, left:6.5.w),
                    child: Text('Offline educational application designed\nfor Eight Graders to learn more about\nthe concept of Newton’s Law of Motion',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 27.2.h,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          height: SizeConfig.safeBlockVertical! * 49,
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.safeBlockVertical! * 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/images/LetsGetStarted.png'),
                                ),
                              ),
                            ),
                            Container(
                              // alignment: Alignment(0.0,-1.0),
                              // padding: EdgeInsets.only(top: 15.h),
                              child: Text('Let’s get started', 
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                  color: Color(0xFFBA494B),
                                ),
                              ),
                            ),
                            Container(
                              // alignment: Alignment(0.0, -1.0),
                              // padding: EdgeInsets.only(top: 19.h),
                              child: Text('Please choose a mode', 
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp,
                                  color: Color(0xFF4785B4),
                                ),
                              ),
                            ),
                            Container(
                              // alignment: Alignment(0.0, 1.0),
                              width: size.width * 0.6,
                              margin: EdgeInsets.only(top:2.h, left: 20.w, right: 20.w),//top: SizeConfig.safeBlockVertical! * 25,
                              child:OutlinedButton.icon(onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentFrontPage(),),);
                              },
                                icon: const Icon(MyFlutterApp.studentbtn, color: Color(0xFFBA494B),), 
                                label: Text("STUDENT",  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFBA494B),
                                    fontSize: 14.sp,
                                  )),
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                      width: 2.3,
                                      color: Color(0xFFBA494B),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),padding: EdgeInsets.only(left: 3.5.w, right: 3.5.w, top: 3.h, bottom: 3.h),
                                    ),
                              ),
                            ),
                            Container(
                              width: size.width * .6,
                              margin: EdgeInsets.only(top:3.h, left: 20.w, right: 20.w), //top: SizeConfig.safeBlockVertical! * 37,
                              child:OutlinedButton.icon(onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherLoginPage(),),);
                              },
                                icon: Icon(MyFlutterApp.teacherbtn, color: Color(0xFFBA494B),), 
                                label: Text(" TEACHER",  
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFBA494B),
                                    fontSize: 14.sp,
                                  )),
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                      width: 2.3,
                                      color: Color(0xFFBA494B),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        
                                      ),padding: EdgeInsets.only(left: 3.5.w, right: 3.5.w, top: 3.h, bottom: 3.h),
                                    ),
                              ),
                            ),
                          ],
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
        padding: EdgeInsets.only(left: 7.w, right: 7.w, bottom: 4.h),
        child: Container(
          child: TabBar(
            padding: EdgeInsets.all(1.h),
            labelColor: Color(0xFF4785B4),
            unselectedLabelColor: Color(0xFF4785B4),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)
            ),
            tabs: <Widget>[
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.info_outline, size: 4.h),
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 3.h),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('About I-Assist',
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  SizedBox(height: .8.h,),
                                  Text('     Understand and Teach Newton\'s Laws of Motion through interactive games, downloadable and editable files - PowerPoint Presentation, Lesson Plan, and Worksheets offline! I-Assist is here to help you learn the Laws of motion with a twist.\n',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text('About the Researchers',
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  SizedBox(height: .5.h,),
                                  Text('Asa, J.T.\nCultivo, D.\nDaniel, E.\nToñgo, H.G.\n[ 2021 ]\n',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('References and Links',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: .5.h,),
                                  Text('     Department of Education, Culture and Sports. (DECS). (n.d.). Physics teachers resource manual. Pasig City. Author K to 12 - Grade 8 Science Learner Module. Retrieved from www.slideshare.net/nicogranada31/k-to-12-grade-8-science-learner-module',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  SizedBox(height: .8.h,),
                                  Text('     K to 12 - Science Grade 8 Teachers Manual. Retrieved from www.slideshare.net/orlandmarcenquig1/science-grade-8-teachers-manual',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  SizedBox(height: .8.h,),
                                  Text('     University of the Philippines National Institute for Science and Mathematics Education Development. (2002). Practical work on High School Physics: Sourcebook for teachers. Quezon City: Author The Physics Classroom (1996-2013). Newton’s laws. Retrieved from www.physicsclassroom.com/Physics-Tutorial/Newton-s-Laws',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFF4785B4),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('\nGame Picture References',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: .8.h,),
                                  Text('https://lh3.googleusercontent.com/RCpY1YpSh8PqbdIZz-u13NLueEBgAb87d7rTP5ETr9CWmIYTBWt4mm_hGZfPk2zsyjPv7w=s170',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/coIH-H6cs1qj6y9pNknrdZXOuL28Bu4fHK_KEYHHB1Bls1-_lLi1-wOFzfpmQk7x27UgYQE=s131',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/T0I3OvNXv_aOHIMetquAVCUKW9QWYWrSWjhuyAjSk-29vd2eHgOCiQKQiweXHTZW1Byosg=s107',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/qAzlt1OmW-P0ZK1OLtnMWzEuHvBMhNmCwRj34nv440sBakVBQLAbZzFdK04XvGihkjEpGA=s85',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/bt38gks3xXrf6noZ4dVdS_gYZkTljfJTpzhn2cwNgt-EUZ2b7-C6IVCbTMWOMvZVx94yqw=s103',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/JyqnhhqL4ccXfPi2nHpIutiZiMY-M8bYU6dtJbvUuEY0CCXkMJEKaNfPGp9lA11nKMjpEQ=s170',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/s06VPEsUO89TWkOwd7TfBEuzlxJs9T1QseECFCw3ybwqQwaeLm-OBBw6tnGKUrwG70bF=s163',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/_biUeDeI7QVqZd4wSzQGx2wfJL8kNmOF5HmLbqX1DmTfNoGBlG-eulgmg--BntVr0ixQ1w=s86',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/KjM5fhEceoHPmHDXdt2rCU73f5jqi13Nahe9ObnNcl9GjUHPpOvLwZXuRjozSVax',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/S71nnIyW0j573sRfWAhxS-HJVXNdcJ7jviNFii4DIouxO1kWlPD3-kp489coKuH3IS_KFQ=s89',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/MWP7Ht5U-GYF6r0XBak-jaXUM-naoKCo9Kts5xutRv22JN6QwqMUYCSvMyj9Y-jSHoGH-Q=s170',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/KE1Ho5sIowbz5GDOS_CsPVbSHv4OEpehGATvY2WzdHoRRaosuu6NFg3m1Be',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/qJtywTEycUljGprYwmw7jXx2WKv5PJVUpXalfLb1f4e88C4CMRRVuBYZbAKCVV',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/rrc6Ljg1pPQ8i_y1FpxVQwDMa_Rd119t8i6HMkCWk4qmWi3OHX-eLf7soCL45jlVCbdBxPA=s137',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/ez6FwEPjJp70vk-2O9h0H42nX0I9l_c2M2f2SvIF-mVkcheriDna_PG5b8fs09nK2RQyG40=s127',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://static.scientificamerican.com/sciam/cache/file/63895163-464B-4177-BEF91078AD73BE6F_source.jpg?w=590&h=800&E2C1ECF5-78FF-4202-93F44A6F7AF1A061',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/RK4kzxLqq-rIC7N4l4AiX9JlGpZgMhBp_taJ25zGS0aTGzCHf5vk2I30kGuRwMsxv0fuyBg=s170',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/vjqw2-aB97VwwFTt13YAqpMNpGVwpxs-kNHO099pkuXsTFm2Iz6PfZlesJjMMI4X1p7qXw=s97',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/gX03hywqe6sIasocWGb-WueZ4vHUabCzF33S0TC5swTn3InBGpb2_MfKQMe7RIiuQgbnuds=s152',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/ZP_QzKVm_tEVyGiM9QPK2zI815npfvpNB3exU6BMCDdNu2LhLKbfj_SV20aLOL',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/U1Pwo_CHertSOuCefqhrrovyzQCnY7osvxpOXVMGGsABh759w_0xxP7-eF2wpW9Z2L4T=s107',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/IhkejyvuDwgY1C7S291fuR2FRMbBAnpT1eCZUg1OOnCaI1RI7RFLQD4OevFtbfa',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/L_WBf0TzmlbhYyzY2aW7u2fDbcl6adkQNJuJvxWKyE6ozZ4CizI5KvhcOGETYuD',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/3YRJoZqA9pXc_6FhW5HS8O9FY_g6m6w-kgpK6L_kAspMbqFoYduSJNhG7mfGgI0qHIPR=s111',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/ugWXd9QQskad5MHg0aKq2NlM_Ly7rMsfV_WailaYOkHHQSX4vTu1er1JEQTkRl',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                  Text('https://lh3.googleusercontent.com/QFO2k7D2bJ8SltBr_4Q1qaaOyT_FjvrV9i7sQqDEmJ0MBWqtrbLWdWiaiknetQHU',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Color(0xFFBA494B),
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    );
                  },
                ),
                
              ),
              Tab(
                icon: IconButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Settings',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFF4785B4), fontSize: 16.sp, fontWeight: FontWeight.bold,),
                                ),
                                SizedBox(height: 2.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Dark Mode\t\t', style: TextStyle(color: Color(0xFF4785B4), fontSize: 14.sp, fontWeight: FontWeight.bold,)),
                                    ChangeThemeButtonWidget(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Music \t\t\t\t\t\t\t', style: TextStyle(color: Color(0xFF4785B4), fontSize: 14.sp, fontWeight: FontWeight.bold,)),
                                    AudioPlayerWithLocalAsset(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    );
                  },
                  icon: Icon(Icons.settings, size: 4.h)
                )
              ),
              // AudioPlayerrr(),
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.exit_to_app_outlined, size: 4.h),
                  onPressed: () {
                    Future.delayed(const Duration(milliseconds: 1000), () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    });
                  },
                ),
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
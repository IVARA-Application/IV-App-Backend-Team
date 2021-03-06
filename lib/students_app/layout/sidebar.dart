import 'package:flutter/material.dart';
import 'package:ivara_app/students_app/drawer_part/Doubt_portal/doubt_help.dart';
import 'package:ivara_app/students_app/drawer_part/Entrance_preparation/Entrance_exams.dart';
import 'package:ivara_app/students_app/drawer_part/Healmymind/Heal_my_mind.dart';
import 'package:ivara_app/students_app/drawer_part/Skill_development/skilldevelopment.dart';
import 'package:ivara_app/students_app/drawer_part/Student_abroad/Study_abroad_help.dart';
import 'package:ivara_app/students_app/drawer_part/Student_personal_details/studentpersonal.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.78,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: screenHeight*0.371,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth*0.0
                        ),
                        child: Container(
                          height: 200,
                          child: Image.asset('assets/icon/logo_small.png',width: screenWidth),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Text(
                        'Aman, B.Tech Third Year',
                        style: TextStyle(color: Color(0xff0772a0), fontSize: 15),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Color(0xff0772a0),height: 3,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomListTile(
              LineAwesomeIcons.home, 'HealMymind', () => {
                Navigator.popAndPushNamed(context, HealMyMindPage.id)
              },),
            CustomListTile(
                LineAwesomeIcons.rocket_chat, 'Study Abroad Support', () => {
                Navigator.popAndPushNamed(context, StudyAbroadHelpPage.id)
                }),
            CustomListTile(
                LineAwesomeIcons.ios_app_store, 'Skill Development', () => {
                }),
            CustomListTile(
                LineAwesomeIcons.comment_dollar, 'Entrance Preparation', () => {
                Navigator.popAndPushNamed(context, EntranceExamsPage.id)
                }),
            CustomListTile(LineAwesomeIcons.question, '24 X 7 Doubt Portal', () => {
                Navigator.popAndPushNamed(context, DoubtHelpPage.id)
                }),
            CustomListTile(LineAwesomeIcons.question, 'Student Personal Details', () => {
                Navigator.popAndPushNamed(context, StudentPersonalPage.id)
                }),
            CustomListTile(LineAwesomeIcons.question, 'Virtual Tutions', () => {
                }),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xff0772a0)))
        ),
        child: InkWell(
          splashColor: Color(0xff0772a0),
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 21,color: Color(0xff0772a0)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

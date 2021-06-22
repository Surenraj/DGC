import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Visitor_log.dart';
import 'AdminNotification.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _selectedItem = 0;

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      key: drawerKey,
      drawerEdgeDragWidth: 0,
      drawerDragStartBehavior: DragStartBehavior.start,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF7Fb539),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/profile.png'))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Cameron Williamson',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center + Alignment(0, .4),
                    child: Padding(
                        padding: EdgeInsets.only(left: 70),
                        child: Text(
                          'Flat No.A124',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("My Profile"),
              leading: Icon(Icons.person),
              onTap: () {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Regular Visitors"),
              leading: Icon(Icons.people_rounded),
              onTap: () {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Terms & Policy"),
              leading: Icon(Icons.policy_rounded),
              onTap: () {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Logout"),
              leading: Icon(EvaIcons.logOutOutline),
              onTap: () => {},
            ),
            SizedBox(height: 5),
            ListTile(
              title: Text("Send Feedback"),
              leading: Icon(Icons.feedback_rounded),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 18, right: 18, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      drawerKey.currentState!.openDrawer();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/profile.png'))),
                    ),
                  ),
                  Container(
                      child: Text("Admin",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminNotification()),
                      );
                    },
                    child: Container(
                      child: SvgPicture.asset(
                        'images/icons/notification.svg',
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130.0,
              width: 120.0,
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage('images/HomePage.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(height: 22.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdminVisitorsLog()),
                              );
                            },
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/visitor.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/ticket.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/event_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Visitors",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Tickets",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Events",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/amenities_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/PAY.png",
                                      width: 45, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/complaint_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Amenities",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Maintenance",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Complaints",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/vaccents_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/sos.png",
                                      width: 45, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/attendance_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Vaccents",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Alert & SOS",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Attendence",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/residenca_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/cctv.png",
                                      width: 45, height: 40),
                                ],
                              ),
                            )))),
                Expanded(
                    child: Container(
                        width: 400,
                        height: 80,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: new Card(
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Image.asset("images/inventory_i.png",
                                      width: 40, height: 40),
                                ],
                              ),
                            )))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Residence",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "CCTV",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Inventory",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

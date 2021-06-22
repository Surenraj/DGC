import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'VisitorLog.dart';

class SecurityHome extends StatefulWidget {
  @override
  _SecurityHomeState createState() => _SecurityHomeState();
}

class _SecurityHomeState extends State<SecurityHome> {
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
                  // GestureDetector(
                  //   onTap: () {
                  //     drawerKey.currentState!.openDrawer();
                  //   },
                  // Container(
                  //   height: 40,
                  //   width: 40,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       image: DecorationImage(
                  //           image: AssetImage('images/profile.png'))),
                  // ),
                  // ),
                  Container(
                      child: Text("Security D1",
                          style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                  Container(
                      child: Text("App Name",
                          style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                child: Text("2972 Westheimer Rd.Santa Ana, Illinois 85486",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black))),
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 62,
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color(0xFF7Fb539)),
                    suffixIcon: Icon(Icons.qr_code_scanner_outlined,
                        color: Color(0xFF000000)),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: const BorderSide(
                        color: Color(0xFF7Fb539),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFF7Fb539)),
                    ),
                    hintText: 'Uid     Ex: A12345, 1234A',
                    hintStyle: TextStyle(color: Color(0xFF7Fb539))),
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
                                    builder: (context) => SecurityVisitorLog()),
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
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => VisitorsLog()),
                              // );
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
                                  Image.asset("images/attendance_i.png",
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
                                  Image.asset("images/notification_i.png",
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
                          "Attendance",
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
                          "Notifications",
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
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => VisitorsLog()),
                              // );
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
                                  Image.asset("images/vehicle_i.png",
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
                              elevation: 0.0,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 14,
                                  ),
                                  // Image.asset("images/event.png",
                                  //     width: 40, height: 40),
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
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ))),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16, right: 16, top: 5),
                        child: Text(
                          "Vehicle No",
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
                          "",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

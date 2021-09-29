import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import './Visitors/VisitorsLog.dart';
import 'userNotification.dart';
import './Tickets/userTicket.dart';
import './events/UserEvents.dart';
import './events/UserEventMaintenance.dart';
import 'Complaints/UserComplaintLog.dart';
import 'Others/userothers.dart';
import 'SOS/sos&alert.dart';
import 'Amenitites/UserAmenitites.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
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
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.home_outlined,
          Icons.chat_outlined,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => userNotification()),
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
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Welcome to',
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Text(
                      'Digital Gate Community',
                      style: GoogleFonts.inter(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7Fb539),
                      ),
                    )
                  ]),
            ),
            Container(
              height: 130.0,
              width: 120.0,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 30,
                  left: MediaQuery.of(context).size.width / 25,
                  right: MediaQuery.of(context).size.width / 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('images/HomePage.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisitorsLog()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFF7Fb539),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                blurRadius: 5,
                                offset: Offset(5, 3),
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 74,
                            height: 75,
                            child: Card(
                              elevation: 0.0,
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset("images/visitor.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Visitors",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserTicket()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFF7Fb539),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                blurRadius: 5,
                                offset: Offset(5, 3),
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 74,
                            height: 75,
                            child: Card(
                              elevation: 0.0,
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset("images/ticket.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Tickets",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserEvents()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFF7Fb539),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                blurRadius: 5,
                                offset: Offset(5, 3),
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 74,
                            height: 75,
                            child: Card(
                              elevation: 0.0,
                              color: Color(0xFF7Fb539),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset("images/event_i.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text("Events",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserAmenitites()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/amenities_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Amenities",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserEventMaintenance()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/PAY.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Maintenance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserComplaintLog()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/complaint.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Complaints",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/vaccents_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("House Vaccent",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserSosAlert()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/sos.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Alert & SOS",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Userothers()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFF7Fb539),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              offset: Offset(5, 3),
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 74,
                          height: 75,
                          child: Card(
                            elevation: 0.0,
                            color: Color(0xFF7Fb539),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/other.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Others",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: Color(0xFF7Fb539)),
                ),
                gradient: LinearGradient(colors: [
                  Color(0xFF7Fb539).withOpacity(0.3),
                  Color(0xFF7Fb539).withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                // color: index == _selectedItemIndex ? Color(0xFF7Fb539) : Colors.white,
                )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}

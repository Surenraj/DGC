import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class userNotification extends StatefulWidget {
  const userNotification({Key? key}) : super(key: key);

  @override
  _userNotificationState createState() => _userNotificationState();
}

class _userNotificationState extends State<userNotification> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF7Fb539)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title:
              Text("Notifications", style: TextStyle(color: Color(0xFF7Fb539))),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: const Icon(EvaIcons.bell, color: Color(0xFF7Fb539)),
                onPressed: () {})
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xFF7Fb539), width: 1.0)),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(top: 13.0),
                          child: RichText(
                              text: TextSpan(
                                  text: "COVID 19 RULES ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7Fb539)),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: "*",
                                    style: TextStyle(color: Colors.red))
                              ]))),
                      Container(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text("All Peoples Should read it asap!!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))),
                    ]),
                SizedBox(height: 13),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF7Fb539),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )),
                          child: Icon(Icons.keyboard_arrow_right_rounded,
                              color: Colors.white)),
                      Container(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text("2 days ago",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))),
                    ]),
              ]),
        )));
  }
}

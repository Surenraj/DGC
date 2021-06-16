import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Visitor_details.dart';
import 'CreateVisitor.dart';

class SecurityVisitorLog extends StatefulWidget {
  const SecurityVisitorLog({Key? key}) : super(key: key);

  @override
  _SecurityVisitorLogState createState() => _SecurityVisitorLogState();
}

class _SecurityVisitorLogState extends State<SecurityVisitorLog> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF7Fb539),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF7Fb539),
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF7Fb539),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Visitor Logs"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              height: 62,
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Color(0xFF7Fb539)),
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
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecurityVisitorsDetails()),
                  );
                },
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("John Antony",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7Fb539))),
                              new Text("     Hold    ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                      backgroundColor: Colors.yellow)),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Block 2, 202",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87)),
                              new Text("Friend",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Today, 10:00 am",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87)),
                              new Text("A21036",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ]))
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecurityVisitorsDetails()),
                  );
                },
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("John Antony",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7Fb539))),
                              new Text("     Approved    ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Color(0xFF7Fb539))),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Block 2, 202",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87)),
                              new Text("Friend",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Today, 10:00 am",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87)),
                              new Text("A21036",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecurityVisitorsDetails()),
                  );
                },
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("John Antony",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7Fb539))),
                              new Text("     Denied    ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Color(0xFFE10000))),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Block 2, 202",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87)),
                              new Text("Friend",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Today, 10:00 am",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87)),
                              new Text("A21036",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecurityVisitorsDetails()),
                  );
                },
                child: Column(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("John Antony",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF7Fb539))),
                              new Text("     Waiting    ",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Color(0xFF2D2D2D))),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Block 2, 202",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87)),
                              new Text("Friend",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Stack(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text("Today, 10:00 am",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87)),
                              new Text("A21036",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  )),
                            ]),
                      ])),
                ]),
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF7Fb539),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecurityCreateVisitor()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))));
  }
}

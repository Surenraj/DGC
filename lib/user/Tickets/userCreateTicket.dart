import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCreateTicket extends StatefulWidget {
  const UserCreateTicket({Key? key}) : super(key: key);

  @override
  _UserCreateTicketState createState() => _UserCreateTicketState();
}

class _UserCreateTicketState extends State<UserCreateTicket> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  bool maskCheck = false;

  bool _hasBeenPressedBlock1 = false;
  bool _hasBeenPressedBlock2 = false;
  bool _hasBeenPressedBlock3 = false;
  bool _hasBeenPressedBlock4 = false;
  bool _hasBeenPressedBlock5 = false;

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
          title: Text("Create a Ticket"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Category: ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: Container(
                      width: 400,
                      height: 80,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFF7Fb539).withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hasBeenPressedBlock1 = !_hasBeenPressedBlock1;
                            });
                          },
                          child: new Card(
                            elevation: 5.0,
                            color: _hasBeenPressedBlock1
                                ? Color(0xFF7Fb539)
                                : Color(0xffe8e8e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16,
                                ),
                                Image.asset("images/plumber_i.png",
                                    width: 40, height: 40),
                              ],
                            ),
                          )))),
              Expanded(
                  child: Container(
                      width: 400,
                      height: 80,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFF7Fb539).withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hasBeenPressedBlock2 = !_hasBeenPressedBlock2;
                            });
                          },
                          child: new Card(
                            elevation: 5.0,
                            color: _hasBeenPressedBlock2
                                ? Color(0xFF7Fb539)
                                : Color(0xffe8e8e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16,
                                ),
                                Image.asset("images/Cleaner.png",
                                    width: 40, height: 40),
                              ],
                            ),
                          )))),
              Expanded(
                  child: Container(
                      width: 400,
                      height: 80,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFF7Fb539).withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hasBeenPressedBlock3 = !_hasBeenPressedBlock3;
                            });
                          },
                          child: new Card(
                            elevation: 5.0,
                            color: _hasBeenPressedBlock3
                                ? Color(0xFF7Fb539)
                                : Color(0xffe8e8e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16,
                                ),
                                Image.asset("images/electric_i.png",
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
                        "Plumber",
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
                        "Cleaner",
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
                        "Electrican",
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFF7Fb539).withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hasBeenPressedBlock4 = !_hasBeenPressedBlock4;
                            });
                          },
                          child: new Card(
                            elevation: 5.0,
                            color: _hasBeenPressedBlock4
                                ? Color(0xFF7Fb539)
                                : Color(0xffe8e8e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16,
                                ),
                                Image.asset("images/mason_i.png",
                                    width: 40, height: 40),
                              ],
                            ),
                          )))),
              Expanded(
                  child: Container(
                      width: 400,
                      height: 80,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color(0xFF7Fb539).withOpacity(0.4),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _hasBeenPressedBlock5 = !_hasBeenPressedBlock5;
                            });
                          },
                          child: new Card(
                            elevation: 5.0,
                            color: _hasBeenPressedBlock5
                                ? Color(0xFF7Fb539)
                                : Color(0xffe8e8e8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16,
                                ),
                                Image.asset("images/other_i.png",
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
                        "Mason",
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
                        "Other",
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
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Problem :",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      hintText: ' Sink Stuck, Light Gone...',
                      hintStyle: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontWeight: FontWeight.w400)))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Attach Image (Optional)",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)))),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  bottom: 20.0,
                ),
                child:
                    Image.asset("images/cameraw_i.png", width: 40, height: 40),
              ),
              color: Color(0xFF7Fb539),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              onPressed: () => {},
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Preferred Date: ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              height: 62,
              width: double.infinity,
              child: OutlineButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                textColor: Colors.black,
                child: Text("Tomorrow", style: TextStyle(fontSize: 16.0)),
                borderSide: BorderSide(
                    color: Color(0xFF7Fb539),
                    style: BorderStyle.solid,
                    width: 2),
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: _startDate,
                          firstDate: new DateTime(DateTime.now().year - 50),
                          lastDate: new DateTime(DateTime.now().year + 50))
                      .then((date) {
                    setState(() {});
                  });
                },
              )),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 40),
            child: RaisedButton(
                padding:
                    EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                color: Color(0xFF7Fb539),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Container(
                              height: 380,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  Text("Ticket Created",
                                      style: TextStyle(
                                          color: Color(0xFF7Fb539),
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Stack(
                                      alignment: Alignment.topCenter,
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          height: 90,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xFF7Fb539),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Column(children: [
                                              SizedBox(height: 20),
                                              Text(
                                                "Sink Blocking.",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text("Plumber",
                                                  style: TextStyle(
                                                      color: Color(0xFF7Fb539),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 15)),
                                            ]),
                                          ),
                                        ),
                                        Positioned(
                                            top: -5,
                                            child: CircleAvatar(
                                                radius: 20,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  child: Image.asset(
                                                      "images/tick_i.png"),
                                                )))
                                      ]),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 40.0),
                                          child: Text(
                                            "ABCD1234",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 28,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: IconButton(
                                                icon: Icon(
                                                    Icons.content_copy_outlined,
                                                    color: Color(0xFF7Fb539)),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 5.0, right: 20.0),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Created on:",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF7Fb539))))),
                                  Container(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                              "Fri, 26 Mar 2021, 06.23 pm",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black)))),
                                  SizedBox(height: 20),
                                  RaisedButton(
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 25,
                                          right: 25,
                                          bottom: 10),
                                      color: Colors.white,
                                      onPressed: () {},
                                      child: Text('Done',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF7Fb539))),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          side: BorderSide(
                                              color: Color(0xFF7Fb539),
                                              width: 1.5))),
                                ],
                              )),
                        );
                      });
                },
                child: Text('Complete',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
        ])));
  }
}

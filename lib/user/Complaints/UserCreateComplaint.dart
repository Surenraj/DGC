import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class UserCreateComplaint extends StatefulWidget {
  const UserCreateComplaint({Key? key}) : super(key: key);

  @override
  _UserCreateComplaintState createState() => _UserCreateComplaintState();
}

class _UserCreateComplaintState extends State<UserCreateComplaint> {
  var _myActivities;
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

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
          title: Text("Create a Complaint"),
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
                          text: "Name of the Problem ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  maxLines: 1,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      hintText: 'Name of the Problem',
                      hintStyle:
                          TextStyle(color: Color(0xFF7Fb539), fontSize: 15)))),
          Container(
            margin: const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF7Fb539),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(left: 5.0, top: 0.0, right: 5.0),
            child: MultiSelectFormField(
              autovalidate: false,
              chipBackGroundColor: Color(0xFF7Fb539),
              chipLabelStyle:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
              dialogTextStyle: TextStyle(fontWeight: FontWeight.w500),
              checkBoxActiveColor: Color(0xFF7Fb539),
              checkBoxCheckColor: Colors.white,
              border: InputBorder.none,
              dialogShapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
              fillColor: Colors.white,
              title: Text("Whom to report",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              dataSource: [
                {
                  "display": "Super admin",
                  "value": "Super admin",
                },
                {
                  "display": "Secretary",
                  "value": "Secretary",
                },
                {
                  "display": "Block Incharge",
                  "value": "Block Incharge",
                },
                {
                  "display": "admin1",
                  "value": "admin1",
                },
                {
                  "display": "Manager",
                  "value": "Manager",
                },
              ],
              textField: 'display',
              valueField: 'value',
              okButtonLabel: 'OK',
              cancelButtonLabel: 'CANCEL',
              hintWidget: Text('Select persons to report',
                  style: TextStyle(color: Color(0xFF7Fb539))),
              initialValue: _myActivities,
              onSaved: (value) {
                if (value == null) return;
                setState(() {
                  _myActivities = value;
                });
              },
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Victim Name ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      hintText: 'Name of Victim',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Description ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            text:
                                "*(Mention Name or Id of the\nworker optional)",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w400))
                      ])))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  maxLines: 5,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 1.5),
                      ),
                      hintText: 'Explain the problem',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
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
                  const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Time And Date ",
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
                child: Text("Pick Date", style: TextStyle(fontSize: 16.0)),
                borderSide: BorderSide(
                    color: Color(0xFF7Fb539),
                    style: BorderStyle.solid,
                    width: 1.5),
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
                              height: 500,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  Text("Complaint Created",
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
                                                "noise",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text("Loud Music Sound",
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
                                  Text(
                                      "Thank you, Admin will\n    Contact you Soon",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: "*",
                                          style: TextStyle(color: Colors.red),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: " Society will take",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ])),
                                  Text("apporiate action to",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400)),
                                  RichText(
                                      text: TextSpan(
                                          text: "ensure safety ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: "*",
                                            style: TextStyle(color: Colors.red))
                                      ])),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 40.0, top: 20),
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
                                                  left: 10.0, top: 20),
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
                child: Text('Create',
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserEventMaintenance extends StatefulWidget {
  const UserEventMaintenance({Key? key}) : super(key: key);

  @override
  _UserEventMaintenanceState createState() => _UserEventMaintenanceState();
}

class _UserEventMaintenanceState extends State<UserEventMaintenance> {
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
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Color(0xFF7Fb539),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Maintenance"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(8.0),
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        blurRadius: 5,
                        offset: Offset(5, 3),
                      ),
                    ],
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(children: <Widget>[
                    Row(children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        radius: 20.0,
                        child: Image.asset('images/cancel.png',
                            height: 15, width: 15),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.topLeft,
                                padding:
                                    const EdgeInsets.only(left: 13.0, top: 3.0),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Maintenance",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                      TextSpan(
                                        text: "    ₹2015",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7Fb539)),
                                      )
                                    ]))),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 13.0, top: 5.0),
                                child: Text(
                                    "Due Date is Near Tap to pay" +
                                        "\n" +
                                        "maintenance",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF7Fb539)))),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: BoxDecoration(
                                    color: Color(0xFF7Fb539),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 5.0,
                                      bottom: 5),
                                  child: Text("Pay",
                                      style: TextStyle(color: Colors.white)),
                                )),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(" ",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                    ])
                  ])),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Recent",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)))),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
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
                                child: Text("Maintenance",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF7Fb539)))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("UPI",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                      SizedBox(height: 13),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Text("₹ 2015",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF7Fb539)))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("yesterday",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                    ]),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("05/12/2020",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)))),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
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
                                child: Text("Maintenance",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF7Fb539)))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("Debit Card",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                      SizedBox(height: 13),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Text("₹ 2015",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF7Fb539)))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("yesterday",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                    ]),
              ),
              RaisedButton(
                  padding:
                      EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                  color: Color(0xFF7Fb539),
                  onPressed: () {},
                  child: Text('Pay now',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Color(0xFF7Fb539), width: 1.5))),
            ],
          ),
        ));
  }
}

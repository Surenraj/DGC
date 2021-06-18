import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'dart:async';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'userTicketDetails.dart';
import 'userCreateTicket.dart';

class UserTicket extends StatefulWidget {
  const UserTicket({Key? key}) : super(key: key);

  @override
  _UserTicketState createState() => _UserTicketState();
}

class _UserTicketState extends State<UserTicket> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRangePicker.showDatePicker(
        context: context,
        initialFirstDate: _startDate,
        initialLastDate: _endDate,
        firstDate: new DateTime(DateTime.now().year - 50),
        lastDate: new DateTime(DateTime.now().year + 50));
    if (picked != null && picked.length == 2) {
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
      print(picked);
    }
  }

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
          title: Text("Ticket"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(EvaIcons.funnel),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Container(
                            height: 230,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 30.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) => AdminHome()),
                                      // );
                                    },
                                    child: Text("All",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 20.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           SecurityHome()),
                                      // );
                                    },
                                    child: Text("Solved",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 20.0, right: 40.0),
                                  child: GestureDetector(
                                    child: Text("Processing",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 20.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      await displayDateRangePicker(context);
                                    },
                                    child: Text("Date",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                              ],
                            )),
                      );
                    });
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserTicketDetails()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF7Fb539),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
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
                                child: Text("Plumber",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF7Fb539)))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("Yesterday, 08.00 pm",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                child: Text("Processing",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                            Container(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("ABCD1234",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF7Fb539)))),
                          ]),
                    ]),
              )),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF7Fb539),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserCreateTicket()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))));
  }
}

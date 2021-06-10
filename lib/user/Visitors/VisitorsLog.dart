import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'Visitors_details.dart';
import 'dart:async';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;

class VisitorsLog extends StatefulWidget {
  const VisitorsLog({Key? key}) : super(key: key);

  @override
  _VisitorsLogState createState() => _VisitorsLogState();
}

class _VisitorsLogState extends State<VisitorsLog> {
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
          title: Text("Visitors Logs"),
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
                            height: 250,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 30.0, right: 40.0),
                                  child: GestureDetector(
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
                                    child: Text("Expected",
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
                                    child: Text("Visited",
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
                                    child: Text("Rejected",
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
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VisitorsDetails()),
                );
              },
              child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(8.0),
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF7Fb539),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(children: <Widget>[
                    Row(children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          child: Image.asset('images/profile.png'),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(
                                    left: 13.0, top: 13.0),
                                child: Text("A12345",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 13.0, top: 5.0),
                                child: Text("Vikram Kumar.M",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF7Fb539)))),
                          ]),
                      Column(children: <Widget>[
                        Container(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Text("Amazon Delivery",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black))),
                        Container(
                            padding:
                                const EdgeInsets.only(left: 25.0, top: 5.0),
                            child: Text("Today,12:00 pm",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black))),
                      ]),
                    ])
                  ])),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF7Fb539),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))));
  }
}

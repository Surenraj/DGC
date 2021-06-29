import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:table_calendar/table_calendar.dart';

class UserEvents extends StatefulWidget {
  const UserEvents({Key? key}) : super(key: key);

  @override
  _UserEventsState createState() => _UserEventsState();
}

class _UserEventsState extends State<UserEvents> {
  CalendarController _controller = CalendarController();

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
          title: Text("Events"),
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
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 30.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text("All",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 30.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text("Gvt Holidays",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 40.0, top: 30.0, right: 40.0),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text("Events",
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
          child: Column(
            children: [
              TableCalendar(
                  initialCalendarFormat: CalendarFormat.month,
                  calendarStyle: CalendarStyle(
                      todayColor: Color(0xFF7Fb539),
                      selectedColor: Color(0xFF7Fb539),
                      todayStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white)),
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonDecoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    formatButtonTextStyle: TextStyle(color: Colors.white),
                    formatButtonShowsNext: false,
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  // onDaySelected: (date, events) {
                  //   print(date.toUtc());
                  // },
                  builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                    todayDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(5.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xFF7Fb539),
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  calendarController: _controller),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 18.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Today",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: TextSpan(
                              text: "Yoga Training in Park",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                              text: "\nBring mate",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: "\n@04.00 pm",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            )
                          ])))),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: TextSpan(
                              text: "Birthday Party in Block 1",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                              text: "\n@07.00 pm",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            )
                          ])))),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 18.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Tomorrow",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                          text: TextSpan(
                              text: "Birthday Party in Block 1",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                              text: "\n@07.00 pm",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            )
                          ])))),
            ],
          ),
        ));
  }
}

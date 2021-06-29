import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class UserSosAlert extends StatefulWidget {
  const UserSosAlert({Key? key}) : super(key: key);

  @override
  _UserSosAlertState createState() => _UserSosAlertState();
}

class _UserSosAlertState extends State<UserSosAlert> {
  Timer? _timer;
  int _start = 3;
  var valueChoose;
  List listItem = ["Park", "Garden", "", ""];

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
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
          title: Text("SOS & Alert"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text("For Emergency Press the button",
                    style: TextStyle(
                        color: Color(0xFFE10000),
                        fontSize: 18,
                        fontWeight: FontWeight.w900)),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        startTimer();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Color(0xFFE10000),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Container(
                                    height: 370,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 25),
                                        Image.asset("images/fire_i.png",
                                            width: 130, height: 130),
                                        SizedBox(height: 15),
                                        Text("Fire",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 35,
                                                fontWeight: FontWeight.w900)),
                                        SizedBox(height: 8),
                                        Text("$_start",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900)),
                                        SizedBox(height: 8),
                                        RaisedButton(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 50,
                                                right: 50,
                                                bottom: 10),
                                            color: Colors.white,
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                            child: Text('Stop',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900,
                                                    color: Color(0xFFE10000))),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25.0))),
                                      ],
                                    )),
                              );
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFE10000),
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
                            color: Color(0xFFE10000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/fire_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Fire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFE10000),
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
                            color: Color(0xFFE10000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/medical_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Medical Help",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFE10000),
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
                            color: Color(0xFFE10000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/lift_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Stuck in Lift",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Color(0xFFE10000),
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
                            color: Color(0xFFE10000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/thief_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Theft",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text("Alerts",
                    style: TextStyle(
                        color: Color(0xFF7Fb539),
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Container(
                                    height: 400,
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20.0),
                                          child: Center(
                                            child: Text("Alerts",
                                                style: TextStyle(
                                                    color: Color(0xFF7Fb539),
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                top: 10.0,
                                                right: 20.0),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text("Select Place",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color(
                                                            0xFF7Fb539))))),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 20.0,
                                              top: 10.0,
                                              right: 20.0),
                                          padding: EdgeInsets.only(
                                              left: 16, right: 16),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                          child: DropdownButton(
                                            hint: Text("Place",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            dropdownColor: Colors.white,
                                            icon: Icon(Icons.arrow_drop_down),
                                            iconSize: 36,
                                            isExpanded: true,
                                            underline: SizedBox(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17),
                                            value: valueChoose,
                                            onChanged: (newValue) {
                                              setState(() {
                                                valueChoose = newValue;
                                              });
                                            },
                                            items: listItem.map((valueItem) {
                                              return DropdownMenuItem(
                                                value: valueItem,
                                                child: Text(valueItem),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        Container(
                                            padding: const EdgeInsets.only(
                                                left: 20.0,
                                                top: 20.0,
                                                right: 20.0),
                                            child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text("Description",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color(
                                                            0xFF7Fb539))))),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                left: 20.0,
                                                top: 10.0,
                                                right: 20.0),
                                            child: TextField(
                                              maxLines: 3,
                                              decoration: InputDecoration(
                                                  fillColor: Colors.grey[300],
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18),
                                                  ),
                                                  filled: true,
                                                  hintText:
                                                      'Enter description'),
                                            )),
                                        SizedBox(height: 10),
                                        RaisedButton(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 50,
                                                right: 50,
                                                bottom: 10),
                                            color: Color(0xFF7Fb539),
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                            child: Text('Alert',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0))),
                                        SizedBox(height: 10),
                                        RaisedButton(
                                            elevation: 0.0,
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 40,
                                                right: 40,
                                                bottom: 10),
                                            color: Colors.white,
                                            onPressed: () =>
                                                Navigator.pop(context, false),
                                            child: Text('Cancel',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0))),
                                      ],
                                    )),
                              );
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFF7Fb539),
                            width: 2.0,
                          ),
                          color: Colors.white,
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
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/pets_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Pet Gone",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                // SizedBox(width: 50),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFF7Fb539),
                            width: 2.0,
                          ),
                          color: Colors.white,
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
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/waterleak_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Water Leak",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                //    SizedBox(width: 50),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: Color(0xFF7Fb539),
                            width: 2.0,
                          ),
                          color: Colors.white,
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
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset("images/fight_i.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Fighting",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(
                    top: 30,
                    left: MediaQuery.of(context).size.width / 10,
                    right: MediaQuery.of(context).size.width / 10,
                    bottom: 40),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7Fb539).withOpacity(0.4),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("All Other Emergency Contact Numbers",
                          style: TextStyle(
                              color: Color(0xFFE10000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 2.0, top: 10, bottom: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("In Appartment",
                            style: TextStyle(
                                color: Color(0xFF7Fb539),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 2.0, top: 10, bottom: 10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Outside",
                            style: TextStyle(
                                color: Color(0xFF7Fb539),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Associate : " + "+91 " + "1234567890",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )),
                            ),
                          ]),
                    ),
                  ],
                )))
          ],
        )));
  }
}

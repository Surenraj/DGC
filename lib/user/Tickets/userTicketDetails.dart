import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserTicketDetails extends StatefulWidget {
  const UserTicketDetails({Key? key}) : super(key: key);

  @override
  _UserTicketDetailsState createState() => _UserTicketDetailsState();
}

class _UserTicketDetailsState extends State<UserTicketDetails> {
  var valueChoose;
  List listItem = ["1234A", "1524B", "1245A", "1789A"];
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
        title: Text("Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 15.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Unique id",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("ABCD1234",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Category",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Plumber",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Problem",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Shink blocking.",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Status",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Processing",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Created on",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("12.03.2021  10.00 am",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Photos",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(top: 8.0),
          child: Align(
              alignment: Alignment.center,
              child:
                  Image.asset("images/profile.png", height: 100, width: 100)),
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Worker Id",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("1234A",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Worker Name",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Rajesh",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40, top: 10, bottom: 40),
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
                                height: 300,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        padding: const EdgeInsets.only(
                                            left: 40.0, top: 30.0, right: 40.0),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Worker Id",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black)))),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 40.0, top: 10.0, right: 40.0),
                                      padding:
                                          EdgeInsets.only(left: 16, right: 16),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          border: Border.all(
                                              color: Color(0xFF7Fb539),
                                              width: 1)),
                                      child: DropdownButton(
                                        hint: Text("Select",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15)),
                                        dropdownColor: Colors.white,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 25,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
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
                                            left: 40.0, top: 20.0, right: 40.0),
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text("Worker Name",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black)))),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 40.0, top: 10.0, right: 40.0),
                                        child: TextField(
                                            decoration: new InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  borderSide: BorderSide(
                                                      color: Color(0xFF7Fb539),
                                                      width: 1.0),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  borderSide: BorderSide(
                                                      color: Color(0xFF7Fb539),
                                                      width: 1.0),
                                                ),
                                                hintText: 'Worker Name',
                                                hintStyle: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15)))),
                                    SizedBox(height: 10),
                                    Container(
                                        child: RaisedButton(
                                            padding: EdgeInsets.only(
                                                top: 10,
                                                left: 25,
                                                right: 25,
                                                bottom: 10),
                                            color: Color(0xFF7Fb539),
                                            onPressed: () {},
                                            child: Text('Complete',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white)),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25.0)))),
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
            Container(
              margin: const EdgeInsets.only(right: 40, top: 10, bottom: 40),
              child: RaisedButton(
                  padding:
                      EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text('Cancel',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.red)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.red, width: 1.5))),
            ),
          ],
        ),
      ])),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdminUserVisitorsDetails extends StatefulWidget {
  const AdminUserVisitorsDetails({Key? key}) : super(key: key);

  @override
  _AdminUserVisitorsDetailsState createState() =>
      _AdminUserVisitorsDetailsState();
}

class _AdminUserVisitorsDetailsState extends State<AdminUserVisitorsDetails> {
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
          padding: const EdgeInsets.only(top: 15.0),
          child: Align(
              alignment: Alignment.center,
              child:
                  Image.asset("images/profile.png", height: 100, width: 100)),
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 15.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Unique id",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("A12345",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Name of Visitor",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Vikram Kumar.M",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Type of visitor",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Amazon Delivery",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Guest with Them",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("03",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Date and in Time",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("12.03.2021  10.00 am",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Created by",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Security",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
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
                child: Text("Date and Out Time",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("12.03.2021, 03.05 pm",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF7Fb539)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFF7Fb539), width: 2.0)))),
          child: Text('Report', style: TextStyle(fontSize: 15.0)),
          onPressed: () {},
        ),
      ])),
    );
  }
}

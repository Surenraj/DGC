import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserComplaintDetails extends StatefulWidget {
  const UserComplaintDetails({Key? key}) : super(key: key);

  @override
  _UserComplaintDetailsState createState() => _UserComplaintDetailsState();
}

class _UserComplaintDetailsState extends State<UserComplaintDetails> {
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
        title: Text("Complaint Details"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 15.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Complaint id",
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
                    fontWeight: FontWeight.w400,
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
                child: Text("Name of Problem",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("noise",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
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
                child: Text("Victim Name",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("ramesh",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
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
            child: Text("Solved",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
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
                child: Text("Incident Date & Time",
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
                    fontWeight: FontWeight.w400,
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
                child: Text("Whom to report",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Admin 1, Admin 2",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
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
          padding: const EdgeInsets.only(top: 15.0),
          child: Align(
              alignment: Alignment.center,
              child:
                  Image.asset("images/profile.png", height: 100, width: 100)),
        ),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Problem Descriptions",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7Fb539))),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 40),
          child: RaisedButton(
              padding:
                  EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
              color: Colors.white,
              onPressed: () {},
              child: Text('Report',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.red)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.red, width: 1.5))),
        ),
      ])),
    );
  }
}

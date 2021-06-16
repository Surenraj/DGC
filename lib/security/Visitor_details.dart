import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecurityVisitorsDetails extends StatefulWidget {
  const SecurityVisitorsDetails({Key? key}) : super(key: key);

  @override
  _SecurityVisitorsDetailsState createState() =>
      _SecurityVisitorsDetailsState();
}

class _SecurityVisitorsDetailsState extends State<SecurityVisitorsDetails> {
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
            padding: const EdgeInsets.only(left: 40.0, top: 20.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Uid No",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("A234589",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
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
                child: Text("Name",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Jai Kumar mohan Manohar",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
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
                child: Text("Vehicle No",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("A234586",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
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
                child: Text("Appartment No",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("B4152",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
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
                child: Text("Visitor Type",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        Container(
          padding: const EdgeInsets.only(left: 40.0, top: 10.0, right: 40.0),
          child: Align(
            alignment: Alignment.center,
            child: Text("Delivery",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
          ),
        ),
        Container(
          color: Color(0xFF7Fb539),
          margin: const EdgeInsets.only(left: 40.0, top: 6.0, right: 40.0),
          height: 1.0,
        ),
        Container(
            padding: const EdgeInsets.only(left: 130.0, top: 20.0),
            child: Text("Temperature",
                style: TextStyle(
                    color: Color(0xFF7Fb539),
                    fontSize: 18,
                    fontWeight: FontWeight.w500))),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 40.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset("images/mask_on_i.png",
                      height: 70, width: 70)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Mask",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500))),
            ),
            Container(
              padding: const EdgeInsets.only(left: 40.0),
              child: RichText(
                text: TextSpan(
                  text: '33.5 ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' C',
                        style: TextStyle(
                            color: Color(0xFF7Fb539),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
            color: Color(0xFF7Fb539),
            margin: const EdgeInsets.only(left: 130.0),
            height: 1.0,
            width: 100.0),
        Container(
            padding: const EdgeInsets.only(left: 40.0, top: 18.0, right: 40.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Images",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7Fb539))))),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.0,
                child: Image.asset('images/profile.png'),
              ),
            ),
            SizedBox(width: 30.0),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.0,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        RaisedButton(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          disabledColor: Color(0xFF7Fb539),
          disabledTextColor: Colors.white,
          onPressed: null,
          child: Text('Approved', style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 20.0),
      ])),
    );
  }
}

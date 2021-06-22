import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserTransactionDetails extends StatefulWidget {
  const UserTransactionDetails({Key? key}) : super(key: key);

  @override
  _UserTransactionDetailsState createState() => _UserTransactionDetailsState();
}

class _UserTransactionDetailsState extends State<UserTransactionDetails> {
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
          title: Text("Transaction Details"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 18.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Maintenance",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset("images/transcation.png",
                        height: 150, width: 150)),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("₹  " + "2015",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                  padding:
                      const EdgeInsets.only(left: 60.0, top: 30.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Invoice ID",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                padding:
                    const EdgeInsets.only(left: 100.0, top: 10.0, right: 40.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("1234567898",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 60.0, top: 20.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Payment Mode :",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                padding:
                    const EdgeInsets.only(left: 100.0, top: 10.0, right: 40.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("UPI",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 60.0, top: 20.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Date :",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                padding:
                    const EdgeInsets.only(left: 100.0, top: 10.0, right: 40.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("05/12/2020",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 60.0, top: 20.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Transaction Status :",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF7Fb539))))),
              Container(
                padding:
                    const EdgeInsets.only(left: 100.0, top: 10.0, right: 40.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Success",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
              SizedBox(height: 50),
              RaisedButton(
                  padding:
                      EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                  color: Color(0xFF7Fb539),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => UserTransactionDetails()),
                    // );
                  },
                  child: Text('Need Help',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Color(0xFF7Fb539), width: 1.5))),
            ],
          ),
        ));
  }
}

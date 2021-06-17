import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class LoginVerify extends StatefulWidget {
  const LoginVerify({Key? key}) : super(key: key);

  @override
  _LoginVerifyState createState() => _LoginVerifyState();
}

class _LoginVerifyState extends State<LoginVerify> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.only(top: 30),
                  child: Image.asset("images/art.png")),
              Container(
                  child: Text("Manage Your Appartment",
                      style: TextStyle(fontSize: 20))),
              Container(
                  child:
                      Text("using this App", style: TextStyle(fontSize: 20))),
              SizedBox(height: 30),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 15.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Phone Number",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7Fb539))))),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFF7Fb539), width: 1.0)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text("+91 1234567890",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                      SizedBox(height: 13),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("Edit",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                    ]),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20.0, right: 40.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Enter Otp",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7Fb539))))),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(
                              color: Color(0xFF7Fb539),
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7Fb539),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                  padding:
                      EdgeInsets.only(top: 15, left: 60, right: 60, bottom: 15),
                  disabledColor: Color(0xFF7Fb539),
                  disabledTextColor: Colors.white,
                  onPressed: null,
                  child: Text('Log in',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0))),
            ],
          ),
        ));
  }
}

















// Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8),
//                     child: SizedBox(
//                       width: 40,
//                       height: 40,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Color(0xFFF6F5FA),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                                 color: Colors.black26,
//                                 blurRadius: 25.0,
//                                 spreadRadius: 1,
//                                 offset: Offset(0.0, 0.75))
//                           ],
//                         ),
//                         child: Center(
//                           child: Text(
//                             "1",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Color(0xFF1F1F1F),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
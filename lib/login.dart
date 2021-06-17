import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'loginVerify.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                      decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7Fb539)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7Fb539)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7Fb539)),
                    ),
                  ))),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (bool value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 10.0, right: 20.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Login In as Admin",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)))),
                ],
              ),
              SizedBox(height: 10),
              RaisedButton(
                  padding:
                      EdgeInsets.only(top: 15, left: 60, right: 60, bottom: 15),
                  color: Color(0xFF7Fb539),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginVerify()),
                    );
                  },
                  child: Text('Log in',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0))),
              SizedBox(height: 10),
              RaisedButton(
                  padding:
                      EdgeInsets.only(top: 15, left: 53, right: 53, bottom: 15),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginVerify()),
                    );
                  },
                  child: Text('Register',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Color(0xFF7Fb539), width: 1.0))),
              SizedBox(height: 70),
              Container(
                  child: Text("By Continuing, You agree",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w300))),
              Container(
                  child: Text("the Terms and Conditions",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w300))),
            ],
          ),
        ));
  }
}

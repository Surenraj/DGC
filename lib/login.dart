import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 80,
              bottom: 8,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: FlutterLogo(size: 107.63607788085938),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: Text(
                    "Manage Your Apartment using this App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff2d2d2d),
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //         border: InputBorder.none,
                      //         labelText: "Phone number",
                      //         hintText: "Enter your phone number"),
                      //   ),
                      // ),
                      Text(
                        "Phone Number",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xff7fb539),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // SizedBox(height: 35),
                    ],
                  ),
                ),
                SizedBox(height: 37.73),
                Container(
                  padding: const EdgeInsets.only(
                    right: 4,
                    top: 17,
                    bottom: 13,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 25,
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffa6cc75),
                              ),
                              padding: const EdgeInsets.only(
                                left: 2,
                                right: 19,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 18.46,
                                    height: 18.75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 27.68),
                      Container(
                        width: 149.18,
                        height: 20.72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: FlutterLogo(size: 20.71875),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.73),
                SizedBox(
                  width: 190,
                  height: 18,
                  child: Text(
                    "Forget Password",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 37.73),
                Container(
                  width: 200,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color(0xff7fb539),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 71,
                    vertical: 16,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Log In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.73),
                Container(
                  width: 200,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Color(0xff7fb539),
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    left: 62,
                    right: 61,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Register",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff7fb539),
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.73),
                SizedBox(
                  width: 260,
                  child: Text(
                    "By Continuing, You agree the Terms and Conditions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff505050),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserSosAlert extends StatefulWidget {
  const UserSosAlert({Key? key}) : super(key: key);

  @override
  _UserSosAlertState createState() => _UserSosAlertState();
}

class _UserSosAlertState extends State<UserSosAlert> {
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text("For Emergency Press the button",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w900)),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.red,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.red,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Fire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.red,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.red,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Medical Help",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.red,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.red,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Stuck in Lift",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.red,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            offset: Offset(5, 3),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.red,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Theft",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
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
                        width: 69,
                        height: 70,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Pet Gone",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Container(
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
                        width: 69,
                        height: 70,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Water Leak",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Container(
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
                        width: 69,
                        height: 70,
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
                    SizedBox(
                      height: 7,
                    ),
                    Text("Fighting",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ],
            ),
            Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
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
                              color: Colors.red,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ));
  }
}

//  child: SingleChildScrollView(
//                   child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Text("All Other Emergency Contact Numbers",
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500)),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
//                     child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text("In Appartment",
//                           style: TextStyle(
//                               color: Color(0xFF7Fb539),
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500)),
//                     ),
//                   ),
//                 ],
//               ))

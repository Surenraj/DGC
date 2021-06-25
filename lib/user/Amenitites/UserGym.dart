import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserGym extends StatefulWidget {
  const UserGym({Key? key}) : super(key: key);

  @override
  _UserGymState createState() => _UserGymState();
}

class _UserGymState extends State<UserGym> {
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
          title: Text("GYM"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7Fb539).withOpacity(0.3),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("GYM Timing",
                        style: TextStyle(
                            color: Color(0xFF7Fb539),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Common For All Blocks",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Morning 04.30 am to 10.00 am",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Evening 04.30 am to 10.00 am",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text("Due to COVID 19 Gyms are closed",
                        style: TextStyle(
                            color: Color(0xFFE10000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                ]),
              ),
            ),
            Center(
              child: Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7Fb539).withOpacity(0.3),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("GYM Timing",
                        style: TextStyle(
                            color: Color(0xFF7Fb539),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Common For All Blocks",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Ground floor [ Unisex ]",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("4th floor [ Unisex ]",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("7th floor [ Unisex ]",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                ]),
              ),
            ),
            Center(
              child: Container(
                margin:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF7Fb539).withOpacity(0.3),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("GYM Timing",
                        style: TextStyle(
                            color: Color(0xFF7Fb539),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Common For All Blocks",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Normal ₹750 / Month",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Membership ₹1500 for 3 Months",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Membership ₹5500 for 12 Months",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ),
                ]),
              ),
            ),
          ],
        )));
  }
}

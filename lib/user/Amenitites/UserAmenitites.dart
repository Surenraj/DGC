import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'UserGym.dart';
import 'UserElevator.dart';

class UserAmenitites extends StatefulWidget {
  const UserAmenitites({Key? key}) : super(key: key);

  @override
  _UserAmenititesState createState() => _UserAmenititesState();
}

class _UserAmenititesState extends State<UserAmenitites> {
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
        title: Text("Amenitites"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
                child: ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Color(0xFF7Fb539).withOpacity(0.6),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserGym()),
                          );
                        },
                        child: Text(
                          "GYM",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))))),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
                child: ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Color(0xFF7Fb539).withOpacity(0.6),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserElevator()),
                          );
                        },
                        child: Text(
                          "Elevator",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))))),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
                child: ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Color(0xFF7Fb539).withOpacity(0.6),
                        onPressed: () {},
                        child: Text(
                          "Meeting Hall",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))))),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Center(
                child: ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Color(0xFF7Fb539).withOpacity(0.6),
                        onPressed: () {},
                        child: Text(
                          "Swimming",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))))),
          ),
        ],
      )),
    );
  }
}

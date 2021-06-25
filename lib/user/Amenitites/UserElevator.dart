import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserElevator extends StatefulWidget {
  const UserElevator({Key? key}) : super(key: key);

  @override
  _UserElevatorState createState() => _UserElevatorState();
}

class _UserElevatorState extends State<UserElevator> {
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
        title: Text("Elevator"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        child: Text("Working",
                            style: TextStyle(
                                color: Color(0xFF7Fb539),
                                fontSize: 17,
                                fontWeight: FontWeight.w400))),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        child: Text("Out of Service",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w400))),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        child: Text("Servicing",
                            style: TextStyle(
                                color: Color(0xFFE10000),
                                fontSize: 17,
                                fontWeight: FontWeight.w400))),
                  ),
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Block 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 1",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_b.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_r.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 3",
                      style: TextStyle(
                          color: Color(0xFFE10000),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 4",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Block 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 1",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_b.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_r.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 3",
                      style: TextStyle(
                          color: Color(0xFFE10000),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 4",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 40, left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Block 3",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 1",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_b.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 2",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_r.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 3",
                      style: TextStyle(
                          color: Color(0xFFE10000),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: SizedBox(
                        width: 69,
                        height: 70,
                        child: Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("images/lift_g.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text("Elevator 4",
                      style: TextStyle(
                          color: Color(0xFF7Fb539),
                          fontSize: 13,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 30, left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Do not use Servicing / Out of Service",
                      style: TextStyle(
                          color: Color(0xFFE10000),
                          fontSize: 17,
                          fontWeight: FontWeight.w500)))),
          Container(
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Last Update 02.03.2021",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)))),
        ],
      )),
    );
  }
}

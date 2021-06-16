import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class SecurityCreateVisitor extends StatefulWidget {
  const SecurityCreateVisitor({Key? key}) : super(key: key);

  @override
  _SecurityCreateVisitorState createState() => _SecurityCreateVisitorState();
}

class _SecurityCreateVisitorState extends State<SecurityCreateVisitor> {
  var valueChoose;
  List listItem = [
    "Amazon Delivery",
    "Swiggy Delivery",
    "Flipkart Delivery",
    "Courier Delivery"
  ];

  bool maskCheck = false;

  bool _hasBeenPressedBlock1 = false;
  bool _hasBeenPressedBlock2 = false;
  bool _hasBeenPressedBlock3 = false;
  bool _hasBeenPressedBlock4 = false;

  bool _hasBeenPressedFloor1 = false;
  bool _hasBeenPressedFloor2 = false;
  bool _hasBeenPressedFloor3 = false;
  bool _hasBeenPressedFloor4 = false;

  bool _hasBeenPressedFlat1 = false;
  bool _hasBeenPressedFlat2 = false;
  bool _hasBeenPressedFlat3 = false;
  bool _hasBeenPressedFlat4 = false;

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
          title: Text("Create a Visitor"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 40.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select Block",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)))),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  child: new Text('Block 1'),
                  textColor:
                      _hasBeenPressedBlock1 ? Colors.white : Colors.black,
                  color: _hasBeenPressedBlock1
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedBlock1 = !_hasBeenPressedBlock1;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('Block 1'),
                  textColor:
                      _hasBeenPressedBlock2 ? Colors.white : Colors.black,
                  color: _hasBeenPressedBlock2
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedBlock2 = !_hasBeenPressedBlock2;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('Block 1'),
                  textColor:
                      _hasBeenPressedBlock3 ? Colors.white : Colors.black,
                  color: _hasBeenPressedBlock3
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedBlock3 = !_hasBeenPressedBlock3;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('Block 1'),
                  textColor:
                      _hasBeenPressedBlock4 ? Colors.white : Colors.black,
                  color: _hasBeenPressedBlock4
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedBlock4 = !_hasBeenPressedBlock4;
                    })
                  },
                ),
              ],
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 40.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select Floor",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)))),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  child: new Text('101'),
                  textColor:
                      _hasBeenPressedFloor1 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFloor1
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFloor1 = !_hasBeenPressedFloor1;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('101'),
                  textColor:
                      _hasBeenPressedFloor2 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFloor2
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFloor2 = !_hasBeenPressedFloor2;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('101'),
                  textColor:
                      _hasBeenPressedFloor3 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFloor3
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFloor3 = !_hasBeenPressedFloor3;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('101'),
                  textColor:
                      _hasBeenPressedFloor4 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFloor4
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFloor4 = !_hasBeenPressedFloor4;
                    })
                  },
                ),
              ],
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 40.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select Flat",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)))),
          Container(
            padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  child: new Text('1'),
                  textColor: _hasBeenPressedFlat1 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFlat1
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFlat1 = !_hasBeenPressedFlat1;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('1'),
                  textColor: _hasBeenPressedFlat2 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFlat2
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFlat2 = !_hasBeenPressedFlat2;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('1'),
                  textColor: _hasBeenPressedFlat3 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFlat3
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFlat3 = !_hasBeenPressedFlat3;
                    })
                  },
                ),
                SizedBox(width: 20),
                RaisedButton(
                  child: new Text('1'),
                  textColor: _hasBeenPressedFlat4 ? Colors.white : Colors.black,
                  color: _hasBeenPressedFlat4
                      ? Color(0xFF7Fb539)
                      : Color(0xffe3e3e3),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressedFlat4 = !_hasBeenPressedFlat4;
                    })
                  },
                ),
              ],
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Name of Visitor: ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Type of Visitor: ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Container(
            margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
            padding: EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Color(0xFF7Fb539), width: 2)),
            child: DropdownButton(
              hint: Text("Select Visitors",
                  style: TextStyle(color: Color(0xFF7Fb539))),
              dropdownColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              underline: SizedBox(),
              style: TextStyle(color: Colors.black, fontSize: 17),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 130.0, top: 10.0),
              child: Text("Temperature",
                  style: TextStyle(
                      color: Color(0xFF7Fb539),
                      fontSize: 18,
                      fontWeight: FontWeight.w500))),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Checkbox(
                  value: maskCheck,
                  onChanged: (a) {
                    setState(() {
                      maskCheck = a!;
                    });
                  },
                ),
              ),
              Container(
                  child: Text("Mask",
                      style: TextStyle(color: Colors.black, fontSize: 20))),
              Container(
                padding: const EdgeInsets.only(left: 100.0),
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
              padding:
                  const EdgeInsets.only(left: 30.0, top: 15.0, right: 40.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Vehicle No",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)))),
          Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: TextField(
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFF7Fb539), width: 2.0),
                      ),
                      hintText: 'Enter Number',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Attach Image ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(text: "*", style: TextStyle(color: Colors.red))
                      ])))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              child: RaisedButton(
                child: Image.asset("images/cctv.png", width: 60, height: 80),
                // textColor: _hasBeenPressedFlat2 ? Colors.white : Colors.black,
                color: Color(0xFF7Fb539),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                onPressed: () => {},
              ),
            ),
            SizedBox(width: 20.0),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.0,
                child: Image.asset('images/profile.png'),
              ),
            ),
            SizedBox(width: 20.0),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45.0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45.0,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            child: new Text('Create', style: TextStyle(fontSize: 16)),
            textColor: Colors.white,
            color: Color(0xFF7Fb539),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            onPressed: () => {},
          ),
          SizedBox(
            height: 30,
          ),
        ])));
  }
}

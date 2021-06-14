import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class CreateVisitor extends StatefulWidget {
  const CreateVisitor({Key? key}) : super(key: key);

  @override
  _CreateVisitorState createState() => _CreateVisitorState();
}

class _CreateVisitorState extends State<CreateVisitor> {
  int yourLocalVariable = 0;
  bool _switchValue = true;
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

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
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Name of Visitor:",
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
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Add Guest",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)))),
          Container(
            alignment: Alignment.center,
            width: 150,
            margin: const EdgeInsets.only(left: 20.0, top: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                ),
              ],
            ),
            child: NumericStepButton(
              maxValue: 20,
              onChanged: (value) {
                yourLocalVariable = value;
              },
            ),
          ),
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
                  padding:
                      const EdgeInsets.only(left: 5.0, top: 10.0, right: 20.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Long Stay",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)))),
            ],
          ),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Type of Visitor:",
                      style: TextStyle(
                          fontSize: 16,
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
                      hintText: 'Friend, Relatives, Others',
                      hintStyle: TextStyle(color: Color(0xFF7Fb539))))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Select a Date:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            text: "*", style: TextStyle(color: Colors.red)),
                      ])))),
          Container(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              height: 62,
              width: double.infinity,
              child: OutlineButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                textColor: Colors.black,
                child: Text("Today", style: TextStyle(fontSize: 16.0)),
                borderSide: BorderSide(
                    color: Color(0xFF7Fb539),
                    style: BorderStyle.solid,
                    width: 2),
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: _startDate,
                          firstDate: new DateTime(DateTime.now().year - 50),
                          lastDate: new DateTime(DateTime.now().year + 50))
                      .then((date) {
                    setState(() {});
                  });
                },
              )),
        ])));
  }
}

class NumericStepButton extends StatefulWidget {
  final int minValue;
  final int maxValue;

  final ValueChanged<int> onChanged;

  NumericStepButton(
      {Key? key,
      this.minValue = 0,
      this.maxValue = 10,
      required this.onChanged})
      : super(key: key);

  @override
  State<NumericStepButton> createState() {
    return _NumericStepButtonState();
  }
}

class _NumericStepButtonState extends State<NumericStepButton> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.remove,
              color: Theme.of(context).accentColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
            iconSize: 30.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                if (counter > widget.minValue) {
                  counter--;
                }
                widget.onChanged(counter);
              });
            },
          ),
          Text(
            '$counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Theme.of(context).accentColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            iconSize: 30.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                if (counter < widget.maxValue) {
                  counter++;
                }
                widget.onChanged(counter);
              });
            },
          ),
        ],
      ),
    );
  }
}

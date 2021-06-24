import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Userothers extends StatefulWidget {
  const Userothers({Key? key}) : super(key: key);

  @override
  _UserothersState createState() => _UserothersState();
}

class _UserothersState extends State<Userothers> {
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
        title: Text("Others"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
              child: Text("Coming soon...",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500)))),
    );
  }
}

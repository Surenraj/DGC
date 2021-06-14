// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
import 'login.dart';
import './admin/AdminHome.dart';
import './security/SecurityHome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Digital Gate Community",
      theme: ThemeData(
          // primaryColor: Color(0xFF7Fb539),
          accentColor: Color(0xFF7Fb539),
          primaryColorLight: Color(0xFF7Fb539),
          brightness: Brightness.light
          // fontFamily: ''
          ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

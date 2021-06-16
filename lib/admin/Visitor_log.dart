import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'AdminUserVisitorDetail.dart';
import 'AdminAllVisitorsDetails.dart';

class AdminVisitorsLog extends StatefulWidget {
  const AdminVisitorsLog({Key? key}) : super(key: key);

  @override
  _AdminVisitorsLogState createState() => _AdminVisitorsLogState();
}

class _AdminVisitorsLogState extends State<AdminVisitorsLog> {
  // Icon cusIcon = Icon(Icons.search);
  // int a = 0;
  // Widget cusSearchBar = Text("Visitor Logs");

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF7Fb539),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF7Fb539),
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Color(0xFF7Fb539),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text("Visitor Logs"),
              centerTitle: true,
              actions: <Widget>[
                IconButton(icon: const Icon(EvaIcons.funnel), onPressed: () {})
                // IconButton(
                //     onPressed: () {
                //       setState(() {
                //         if (this.cusIcon.icon == Icons.search && a == 0) {
                //           a = 1;
                //           this.cusIcon = Icon(Icons.cancel);
                //           this.cusSearchBar = TextField(
                //             style: TextStyle(color: Colors.white),
                //             textInputAction: TextInputAction.go,
                //             decoration: InputDecoration(
                //                 // prefixIcon: Icon(Icons.search,
                //                 //     color: Color(0xFFffffff)),
                //                 enabledBorder: UnderlineInputBorder(
                //                     borderSide:
                //                         new BorderSide(color: Colors.white)),
                //                 focusedBorder: UnderlineInputBorder(
                //                     borderSide:
                //                         new BorderSide(color: Colors.white)),
                //                 hintText: '      Uid   Ex: A12345, 1234A',
                //                 hintStyle: TextStyle(color: Color(0xFFFFFAFA))),
                //           );
                //         } else if (this.cusIcon.icon == Icons.cancel &&
                //             a == 1) {
                //           a = 0;
                //           this.cusIcon = Icon(Icons.search);
                //           this.cusSearchBar = Text("Visitor Logs");
                //         }

                //         // else {

                //         // }
                //       });
                //     },
                //     icon: cusIcon)
              ],
              bottom: TabBar(
                unselectedLabelColor: Color(0xffEEEADE),
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(40),
                //     color: Colors.green[300]),
                tabs: [
                  Tab(text: "Yours"),
                  Tab(text: "All"),
                ],
              )),
          body: TabBarView(children: [
            ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminUserVisitorsDetails()),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(8.0),
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF7Fb539),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(children: <Widget>[
                        Row(children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              child: Image.asset('images/profile.png'),
                            ),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(
                                        left: 13.0, top: 13.0),
                                    child: Text("A12345",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 13.0, top: 5.0),
                                    child: Text("Vikram Kumar.M",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7Fb539)))),
                              ]),
                          Column(children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Text("Amazon Delivery",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 25.0, top: 5.0),
                                child: Text("Today,12:00 pm",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                        ])
                      ])),
                ),
              ],
            ),
            ListView(
              children: [
                Container(
                  height: 62,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, color: Color(0xFF7Fb539)),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: const BorderSide(
                            color: Color(0xFF7Fb539),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFF7Fb539)),
                        ),
                        hintText: 'Uid     Ex: A12345, 1234A',
                        hintStyle: TextStyle(color: Color(0xFF7Fb539))),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminAllVisitorsDetails()),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(8.0),
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF7Fb539),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(children: <Widget>[
                        Row(children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              child: Image.asset('images/profile.png'),
                            ),
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(
                                        left: 13.0, top: 13.0),
                                    child: Text("A12345",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black))),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 13.0, top: 5.0),
                                    child: Text("Vikram Kumar.M",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7Fb539)))),
                              ]),
                          Column(children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(top: 13.0),
                                child: Text("Amazon Delivery",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black))),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 25.0, top: 5.0),
                                child: Text("Today,12:00 pm",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black))),
                          ]),
                        ])
                      ])),
                ),
              ],
            )
          ]),
        ));
  }
}

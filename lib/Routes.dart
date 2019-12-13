import 'package:flutter/material.dart';
import 'package:leaveapp_user/screens/profile.dart';
import 'package:leaveapp_user/screens/history.dart';
import 'package:leaveapp_user/screens/leaveform.dart';
import 'package:leaveapp_user/screens/bottomtab.dart';
import 'package:leaveapp_user/screens/editinfo.dart';
import 'package:leaveapp_user/screens/login.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/bottomtab": (BuildContext context) => new BottomTabAppBar(),
    "/profile": (BuildContext context) => new ProfileScreen(),
    "/history": (BuildContext context) => new HistoryScreen(),
    "/leaveform": (BuildContext context) => new LeaveFormScreen(),
    "/editinfo": (BuildContext context) => new EditInfoScreen(),
    "/login":(BuildContext context) => new LoginScreen(), 


  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Color(0xff01023F),
      ),
      routes: routes,
    ));
  }
}

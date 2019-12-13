import 'package:flutter/material.dart';
import 'package:leaveapp_user/screens/history.dart';
import 'package:leaveapp_user/screens/profile.dart';
import 'package:leaveapp_user/screens/leaveform.dart';
import 'package:leaveapp_user/screens/editinfo.dart';

class BottomTabAppBar extends StatefulWidget {
  @override
  BottomTabState createState() => BottomTabState();
}

class BottomTabState extends State<BottomTabAppBar> {
  int currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
   
    ProfileScreen(),
    LeaveFormScreen(),
    HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions[currentIndex],
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget bottomNavBar() {
    final List<BottomNavigationBarItem> items = [
      // First item

     
      BottomNavigationBarItem(
       icon: currentIndex == 0 ?
         Image.asset(
          'assets/images/profile-dashboard.png',
          width: 35,
          height: 35,
        ): Image.asset(
          'assets/images/profile.png',
          width: 35,
          height: 35,
        ),
        title: Text('User', style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      BottomNavigationBarItem(
        icon: currentIndex == 1 ?
         Image.asset(
          'assets/images/leave form active.png',
          width: 35,
          height: 35,
        ): Image.asset(
          'assets/images/leave-form.png',
          width: 35,
          height: 35,
        ),
        title: Text('Leave Form',style: TextStyle(fontWeight: FontWeight.bold)),
      ),

      BottomNavigationBarItem(
       icon: currentIndex == 2 ?
         Image.asset(
          'assets/images/History-active.png',
          width: 35,
          height: 35,
        ): Image.asset(
          'assets/images/history.png',
          width: 35,
          height: 35,
        ),
        title: Text('History', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    ];

    return BottomNavigationBar(
      items: items,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      currentIndex: currentIndex,
      iconSize: 24.0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 10.0,
      type: BottomNavigationBarType.fixed,
      elevation: 18.0,
      backgroundColor: Colors.white,
    );
  }
}

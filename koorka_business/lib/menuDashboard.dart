import 'package:flutter/material.dart';
import 'dart:async';

import 'package:koorkabusiness/ordersTableView.dart';

final Color backgroundColor = Color(0xFF4A4a58);

class MenuDashboard extends StatefulWidget {

  @override
  _MenuDashboardState createState() => _MenuDashboardState();
}

class _MenuDashboardState extends State<MenuDashboard> {
  int _currentIndex = 0;

  final tabs = [
    OrdersTableView(),
    Center(child: Text('Home')),
    Center(child: Text('My Shop')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Center(child: Text("Koorka For Business", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.power_settings_new),
              tooltip: "Logout & Login",
              onPressed: () {
                //Logout
              },
            )
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedFontSize: 15,
        iconSize: 30,
        unselectedItemColor: Colors.lightGreenAccent,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Orders"),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text("My Shop"),
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

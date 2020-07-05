import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {

  ClientPage({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $username", style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/LoginPage');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}

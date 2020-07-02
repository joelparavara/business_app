import 'package:flutter/material.dart';
import 'package:koorkabusiness/menuDashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDashboard()
    );
  }
}

/*
  <?php
     $host = 'localhost';
     $user = 'u422904200_djenkoorka';
     $pass = 'werekoorka';
     $db = 'u422904200_koorkadb';

     $conn = mysqli_connect($host,$user,$pass,$db);
  ?>
 */
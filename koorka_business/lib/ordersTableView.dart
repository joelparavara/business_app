import 'package:flutter/material.dart';
import 'package:koorkabusiness/user.dart';

class OrdersTableView extends StatefulWidget {
  @override
  _OrdersTableViewState createState() => _OrdersTableViewState();
}

class _OrdersTableViewState extends State<OrdersTableView> {
  List <User> users;

  @override
  void initState() {
    users = User.getUsers();
    super.initState();
  }
  DataTable dataBody() {
    return DataTable(
      columns: [
        DataColumn(
          label: Text("Orders"),
          numeric: false,
          tooltip: "This is First Name",
        ),

      ],
      rows: users
          .map(
              (user) => DataRow(
                cells: [
                  DataCell(
                    Text(user.firstName),
                  ),
                ]),
      )
        .toList()
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
            child: dataBody(),
          )
        ],
      ),
    );
  }
}

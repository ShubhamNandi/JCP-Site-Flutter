import 'package:flutter/material.dart';

class EmployeeSearch extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Employee Name'),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Employee Name'),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Employee Name'),
            trailing: Icon(Icons.arrow_right),
          )
        ],)
    );
  }
}
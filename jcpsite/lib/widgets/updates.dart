import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal:600, vertical:105),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Employee Name"),
                SizedBox(height:10),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                Text("Employee Name"),
                
            ],),
            SizedBox(width: 50),
            Column(children:<Widget>[
              Text("In")
            ]),
             SizedBox(width: 10),
            Column(children:<Widget>[
              Text("Lunch")
            ]),
             SizedBox(width: 10),
            Column(children:<Widget>[
              Text("Out")
            ]), 
          ]
        ),
        
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SiteInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(     
      children: <Widget>[        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Client')
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Project Manager')
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Weather'),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Work Order Number'),
            ),
          ]
        )
      ],
    );
  }
}
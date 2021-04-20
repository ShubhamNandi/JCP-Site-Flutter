import 'package:flutter/material.dart';

class ActiveBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
      child: Text(
        'SITES',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

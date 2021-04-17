import 'package:flutter/material.dart';

class ActiveBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
      child: Text(
        'SITES',
      ),
    );
  }
}
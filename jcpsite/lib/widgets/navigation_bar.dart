import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(child: Image.asset('lib/assets/images/logo.png')),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _NavBarItem('SITES'),
                _NavBarItem('CLIENTS'),
                _NavBarItem('PROJECT\nMANAGER'),
                _NavBarItem('EMPLOYEES'),
                _NavBarItem('SUB-\nCONTRACTOR'),
                _NavBarItem('REQUESTS'),
                Row(
                  children: [
                    Center(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _NavBarItem('Test User')
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
              child: Container(
            height: 53,
            width: 149,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(
              child: Text(
                'LOG OUT',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        color: Theme.of(context).primaryColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}

import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            child:Image.network('https://images.unsplash.com/photo-1589254065878-42c9da997008?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')  
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('SITES'),
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('CLIENTS'),
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('EMPLOYEES'),
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('SUB-CONTRACTOR'),
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('UseName'),
                SizedBox(
                  width: 50,
                ),
                _NavBarItem('Login'),
              ],
            )
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
        fontSize: 18
      ),
    );
  }
}
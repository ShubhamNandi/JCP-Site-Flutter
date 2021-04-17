import 'package:flutter/material.dart';
import 'package:jcpsite/widgets/active_bar.dart';
import 'package:jcpsite/widgets/employee_search.dart';
import 'package:jcpsite/widgets/navigation_bar.dart';
import 'package:jcpsite/widgets/site_info.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: <Widget>[
            NavigationBar(),
            ActiveBar(),
            Expanded(
              child: Row(
                children: <Widget> [
                  EmployeeSearch(),
                  SiteInfo(),
                  
                ]
              ) 
            )

          ],
        ),
    );
  }
}
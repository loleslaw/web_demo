import 'package:flutter/material.dart';
import 'package:web_rd_demo/00_pages/landing_page.dart';
import 'package:web_rd_demo/00_pages/navbar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(195, 20, 50, 1),
                       Color.fromRGBO(36, 11, 54, 1)],
            ),
          ),
           child: Column(
             children: <Widget>[
               NavBar(),
               LandingPage(),
             ],),
        ),
      ),
    );
  }
}

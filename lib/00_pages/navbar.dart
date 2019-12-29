import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {

            if (constraints.maxWidth > 1200) {
           //   print('screen width ${constraints.maxWidth} - Desktop');
              return DesktopNavbar();
            } else if (constraints.maxWidth > 800) {
           //   print('screen width ${constraints.maxWidth} - Tablet');
              return TabletNavbar();
            } else {
           //   print('screen width ${constraints.maxWidth} - Mobile');
              return MobileNavbar();
            }
          },
        ),
      ),
    );
  }
}

final menuItems = ['Home', 'Projects', 'About'];

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxWidth: 1200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _titleText(),
          Row(
            children: <Widget>[
              _menuRow(title: menuItems[0]),
              _menuRow(title: menuItems[1]),
              _menuRow(title: menuItems[2]),
              _loginButton(),
            ],
          ),      
        ],
      ),
    );
  }
}
  Widget _titleText() {
    return Row(children: <Widget>[
      Image.asset('assets/images/kapi.png',width: 100, height: 100, fit: BoxFit.cover,),
      SizedBox(width: 30,),
      Text(
        'KAPI Interactive',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
          color: Colors.white,
        ),
      ),
    ],
    );
      
      
  }
  Row _menuRow({String title})  {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
  MaterialButton _loginButton(){
    return MaterialButton(
      color: Colors.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }

class TabletNavbar extends StatelessWidget {
  const TabletNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DesktopNavbar(),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(

        children: <Widget>[
          _titleText(),
          Padding(padding: EdgeInsets.only(top: 10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _menuRow(title: menuItems[0]),
              _menuRow(title: menuItems[1]),
              _menuRow(title: menuItems[2]),
             // _loginButton(),
            ],
          ),      
        ],
      ),
    );
  }
}

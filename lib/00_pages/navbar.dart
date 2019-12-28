import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return DesktopNavbar();
          } else if (constraints.maxHeight > 800) {
            return TabletNavbar();
          } else {
            return MobileNavbar();
          }
        },
      ),
    );
  }
}

final menuItems=['Home','Projects','About'];

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // constraints: BoxConstraints(maxWidth: 1200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'KAPI Interactive',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.white,),
          ),
          Row(children: menuItems.map((f) => 
            Row(children: <Widget>[
              Text(f,style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
            ],),
            ).toList(),
          )
        ],
      ),
    );
  }
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
      child: Row(),
    );
  }
}

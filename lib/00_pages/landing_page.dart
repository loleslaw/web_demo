import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1200) {
              //   print('screen width ${constraints.maxWidth} - Desktop');
              return DesktopLandingPage();
            } else if (constraints.maxWidth > 800) {
              //   print('screen width ${constraints.maxWidth} - Tablet');
              return TabletLandingPage();
            } else {
              //   print('screen width ${constraints.maxWidth} - Mobile');
              return MobileLandingPage();
            }
          },
        ),
      ),
    );
  }
}

class DesktopLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LeftColumn(),
      ],
    );
  }
}

class TabletLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LandingPage();
  }
}

class MobileLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

Widget LeftColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Mobile apps\nDevelopment',
        style: TextStyle(
            fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

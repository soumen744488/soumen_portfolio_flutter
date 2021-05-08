import 'package:flutter/material.dart';
import 'package:soumenportfolio/Views/AboutMe.dart';
import 'package:soumenportfolio/Views/Experience.dart';
import 'package:soumenportfolio/Views/Home.dart';
import 'package:soumenportfolio/Views/Projects.dart';

class MobileDrawer extends StatefulWidget {
  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.zero,
      color: Colors.black,
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutMe()));
            },
          ),
          ListTile(
            title: Text(
              "Experience",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Experience()));
            },
          ),
          ListTile(
            title: Text(
              "Project",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Projects()));
            },
          ),
        ],
      ),
    );
  }
}

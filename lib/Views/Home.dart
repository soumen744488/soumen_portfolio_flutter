import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soumenportfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:soumenportfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:soumenportfolio/Adapter/HomePageAdapter/Introduction.dart';
import 'package:soumenportfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:soumenportfolio/Adapter/SocialAccounts.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Scaffold(
      drawer: width < 600 ? MobileDrawer() : Container(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: width < 600 ? MobileAppBar():
        OtherDeviceAppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            width: width,
            height: hight,
            child: Container(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Flexible(flex:1,child: SocialAccounts()),
                        Flexible(flex:10,child: Container(padding:EdgeInsets.all(15),child: Introduction(),),)
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
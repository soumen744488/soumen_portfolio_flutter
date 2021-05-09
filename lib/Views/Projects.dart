import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:soumenportfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:soumenportfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:soumenportfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:soumenportfolio/Adapter/ProjectsAdapter/ProjectsAdapter.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
   double hight, width;
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

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
        child: width < 600 ? MobileAppBar() : OtherDeviceAppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: hight,
            width: width,
            child: ListView(
              children: [
                Center(
                    child: Container(
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText("My Projects",
                          speed: Duration(milliseconds: 80),
                          textStyle: TextStyle(
                              fontSize: width > 600 ? 40 : 27,
                              color: Colors.white,
                              letterSpacing: 4),
                          textAlign: TextAlign.start),
                    ],
                  ),
                )),
                SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                    future: count(2),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Read Write & Share",
                          ProjectLogoPath: 'assets/images/iv.png',
                          ProjectDescription: "'RWS' or 'Read Write & Share' is an Android application .\nOne can use it as a code editor (c,c++,java,python) and sharing purpose",
                          ProjectDescriptionForMobile: "'RWS' or 'Read Write & Share' is an Android application .\nOne can use it as a code editor (c,c++,java,python) and sharing purpose",
                          FirstTechnology: 'Android',
                          SecondTechnology: 'Java',
                          ThirdTechnology: 'Xml',
                          ForthTechnology: 'Rest Api (Rectrofit)',
                          ProjectUrl: "https://github.com/iamsouviki/Read-Write-and-Share",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(3),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "My Portfolio",
                          ProjectLogoPath: '',
                          ProjectDescription: "'My Portfolio' is a flutter web application . Its just a web resume",
                          ProjectDescriptionForMobile: "'My Portfolio' is a flutter web application .\nIts just a web resume",
                          FirstTechnology: 'Flutter',
                          SecondTechnology: 'Dart',
                          ThirdTechnology: 'Github',
                          ForthTechnology: 'Firebase',
                          ProjectUrl: "https://github.com/soumen744488/soumen_portfolio_flutter",
                        );
                      }
                      return Container();
                    }),
                SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(4),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ProjectAdapter(
                          ProjectName: "Expense Manager",
                          ProjectLogoPath: '',
                          ProjectDescription: "'Expense Manager' is a Python GUI tikinter Based application , \nwhich is developed to keep tracking on daily expenses and as well as we can save money for predefine expenses which will help for future investment . ",
                          ProjectDescriptionForMobile: "'Expense Manager' is a Python GUI tikinter Based application , \nwhich is developed to keep tracking on daily expenses and \nas well as we can save money for predefine expenses which will help for future investment .",
                          FirstTechnology: '',
                          SecondTechnology: 'Python',
                          ThirdTechnology: 'Sqlite',
                          ForthTechnology: '',
                          ProjectUrl: "https://github.com/soumen744488/ExpenseManager",
                        );
                      }
                      return Container();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectAdapter extends StatefulWidget {
  final String ProjectName;
  final String ProjectLogoPath;
  final String ProjectDescription;
  final String ProjectDescriptionForMobile;
  final String FirstTechnologyIconPath;
  final String SecondTechnologyIconPath;
  final String ThirdTechnologyIconPath;
  final String ForthTechnologyIconPath;
  final String ProjectUrl;

  const ProjectAdapter(
      {key,
       this.ProjectName,
       this.ProjectLogoPath,
       this.ProjectDescription,
       this.ProjectDescriptionForMobile,
       this.FirstTechnologyIconPath,
       this.SecondTechnologyIconPath,
       this.ThirdTechnologyIconPath,
       this.ForthTechnologyIconPath,
       this.ProjectUrl})
      : super(key: key);
  @override
  _ProjectAdapterState createState() => _ProjectAdapterState();
}

class _ProjectAdapterState extends State<ProjectAdapter> {
   double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Container(
        margin:
            width > 600 ? EdgeInsets.only(top: 60) : EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.white.withOpacity(0.7), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      children: [
                        widget.ProjectLogoPath == ''
                            ? Container()
                            : FittedBox(
                                fit: BoxFit.contain,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(widget.ProjectLogoPath),
                                ),
                              ),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Container(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              widget.ProjectName,
                              style: TextStyle(
                                  fontSize: width > 600 ? 22 : 18,
                                  color: Colors.white,
                                  letterSpacing: 3),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      width > 600
                          ? widget.ProjectDescription
                          : widget.ProjectDescriptionForMobile,
                      style: TextStyle(
                          fontSize: width > 600 ? 18 : 15,
                          color: Colors.white.withOpacity(0.6),
                          letterSpacing: 1.2),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            widget.FirstTechnologyIconPath == ''
                                ? Container(
                                    height: 20,
                                    width: 20,
                                  )
                                : Container(
                                    height: 15,
                                    width: 40,
                                    child: Image.asset(
                                        widget.FirstTechnologyIconPath),
                                  ),
                            SizedBox(
                              width: 7,
                            ),
                            widget.SecondTechnologyIconPath == ''
                                ? Container(
                                    height: 20,
                                    width: 20,
                                  )
                                : Container(
                                    height: 15,
                                    width: 40,
                                    child: Image.asset(
                                        widget.SecondTechnologyIconPath),
                                  ),
                            SizedBox(
                              width: 7,
                            ),
                            widget.ThirdTechnologyIconPath == ''
                                ? Container(
                                    height: 20,
                                    width: 20,
                                  )
                                : Container(
                                    height: 15,
                                    width: 40,
                                    child: Image.asset(
                                        widget.ThirdTechnologyIconPath),
                                  ),
                            SizedBox(
                              width: 7,
                            ),
                            widget.ForthTechnologyIconPath == ''
                                ? Container(
                                    height: 20,
                                    width: 20,
                                  )
                                : Container(
                                    height: 15,
                                    width: 40,
                                    child: Image.asset(
                                        widget.ForthTechnologyIconPath),
                                  )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Container(
                      width: 180,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white38,
                      ),
                      child: TextButton(
                        child: Row(
                          children: [
                            Icon(
                              IconData(0xe800,
                                  fontFamily: 'MySocialIcons',
                                  fontPackage: null),
                              color: Colors.white,
                            ),
                            Text(
                              "    Project Link    ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                        onPressed: () {
                          launch(widget.ProjectUrl);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

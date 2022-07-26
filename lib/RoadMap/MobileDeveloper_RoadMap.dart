
import 'package:capi/Profile_Page/Profile_Page_theme.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class RoadMap extends StatelessWidget {
  const RoadMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IndicatorStyle indicator = IndicatorStyle(
      width: 20,
      height: 20,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      indicator: Container(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.blueAccent,
            ),
          ),
          shape: BoxShape.circle,
          color: Colors.blueAccent,
        ),
      ),
    );

    LineStyle style2 = LineStyle(
      color: Colors.blueAccent,
      thickness: 2.5,
    );

    TextStyle tileStyle = TextStyle(
        color: Colors.blueGrey,
        fontSize: 14,
        fontFamily: 'Comfort',
        fontWeight: FontWeight.bold);

    TextStyle fellow =
        TextStyle(color: Colors.blueGrey, fontSize: 11, fontFamily: 'Comfort');

    TextStyle alert =
        TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Comfort');

    TextStyle description =
        TextStyle(color: Colors.black, fontFamily: 'Comfort', fontSize: 13);

    TextStyle onTapText = TextStyle(
      color: Colors.blue,
      fontFamily: "Comfort",
      fontSize: 15,
    );

    double imageWidth = 60;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Mobile Developer',
          style: TextStyle(color: Colors.black, fontFamily: 'Comfort'),
        ),
        centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                ),
                TimelineTile(
                  endChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/kotlin.png",
                          width: imageWidth,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Pick a Language',
                                style: tileStyle,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Kotlin is the preferred choice these days for native apps, still..Java is a very good old friend.',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "Pick a Language",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 400,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/1.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Although, you can use both Kotlin and Java to develop native android apps, "
                                              " Google announced in 2019 to make Kotlin the preferred way of developing android applications.\n\n"
                                              "If you were to start learning android development today, Kotlin should be your language of choice",
                                              style: description,
                                              textAlign: TextAlign.left,
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  isFirst: true,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),
                TimelineTile(
                  startChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('The Fundamentals',
                                  style: tileStyle,
                                  textAlign: TextAlign.center),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'These are the pillars upon witch you will build your top notch skill, take your time building them!',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/2.png",
                          width: 55,
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "The Fundamentals",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 145,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 400,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/2.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "We have also listed down some free resources which you can use for the items listed in the image above. "
                                              "you don't need to go through all of them, just go through them and pick what you like.",
                                              style: description,
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        '• Learn the basics of Kotlin',
                                                    style: onTapText,
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            const url =
                                                                'https://blog.teamtreehouse.com/absolute-beginners-guide-kotlin';
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(
                                                                url,
                                                              );
                                                            } else {
                                                              throw 'Cant Launch';
                                                            }
                                                          })
                                              ]),
                                            ),

                                            SizedBox(
                                              height: 10,
                                            ),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                    '• Official Kotlin Tutorials',
                                                    style: onTapText,
                                                    recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url =
                                                            'https://kotlinlang.org/docs/tutorials/';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),

                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                    '• Data Structures and Algorithms.',
                                                    style: onTapText,
                                                    recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url =
                                                            'https://www.studytonight.com/data-structures/introduction-to-data-structures';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),

                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                    '• Algorithms and Data Structures in Kotlin.',
                                                    style: onTapText,
                                                    recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url =
                                                            'https://github.com/bmaslakov/kotlin-algorithm-club';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),


                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),

                TimelineTile(
                  endChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/3.png",
                          width: imageWidth,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Version Control System',
                                  style: tileStyle,
                                  textAlign: TextAlign.center),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                  'Record your changes to the codebase and allow you to recall specific versions later'
                                  'who know when you might need one!',
                                  style: fellow,
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "Version Control System",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 400,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/3.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Version control software keeps track of every modification to the code in a special kind of database.\n\nIf a mistake is made, developers can turn back the clock and compare earlier versions of the code to help fix the mistake while minimizing disruption to all team members.",
                                              style: description,
                                              textAlign: TextAlign.left,
                                            ),

                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),

                TimelineTile(
                  startChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Repo Hosting Services',
                                style: tileStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Scaling is everything, with repos you can share your work and collaborate with others',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/5.png",
                          width: imageWidth,
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "Repo Hosting Services",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/4.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(text: 'There are a variety of modern software repository hosting tools available to choose from. Each code repository system has its own strength and weaknesses. \n\nAdditionally, each repository hosting tool has various support for underlying version control systems ', style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Comfort",
                                                  fontSize: 15,
                                                ),),
                                                TextSpan(
                                                    text: 'Git ',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://git-scm.com/';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      }),
                                                TextSpan(text: "is the most common one these days "
                                                  "Here are some of the resources to get you started. Feel free to google and find something else that you find easier:", style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "Comfort",
                                                  fontSize: 15,
                                                ),),
                                              ]),

                                            ),



                                            SizedBox(
                                              height: 10,
                                            ),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                    '• Udacity — Version Control with Git',
                                                    style: onTapText,
                                                    recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url =
                                                            'https://www.udacity.com/course/version-control-with-git--ud123';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),

                                            SizedBox(
                                              height: 10,
                                            ),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                    '• GitHub Hello World',
                                                    style: onTapText,
                                                    recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url =
                                                            'https://guides.github.com/activities/hello-world/';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),


                TimelineTile(
                  endChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/7.png",
                          width: imageWidth,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Build An Application',
                                  style: tileStyle,
                                  textAlign: TextAlign.center),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Thought you should start this simultaneously with the first step, practice makes perfect.',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "Build An Application",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 350,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/5.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Here is the list of items that you are going to need when developing Android applications. \n\nPlease note that, this is an exhaustive list, and you don't need to know it all from the get-go. \n\nGet an idea of the items listed, and just start building some apps and keep the items listed in the back of your mind and have a deep dive when using them. ",
                                              style: description,
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Using Activities and Activity Life Cycles',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/guide/components/activities/intro-activities';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),


                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Building Flexible Interfaces using Fragments',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/guide/components/fragments';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),



                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Debugging using Android Studio Debugger',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/studio/debug';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),

                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Handling App Configurations',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/work/managed-configurations';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),


                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Using Intents and Intent Filters',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/guide/components/intents-filters';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Understand Context',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://guides.codepath.com/android/Using-Context';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),

                TimelineTile(
                  startChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Writing Robust Apps',
                                style: tileStyle,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'This is the part where we can call you a real app developer, testing, security, and concurrency...'
                                'time to advance!',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/8.png",
                          width: imageWidth,
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor: Color(0xFFffffff),
                                title: Text(
                                  "Writing Robust Apps",
                                  style: alert,
                                  textAlign: TextAlign.center,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                content: Builder(
                                  builder: (context) {
                                    var height =
                                        MediaQuery.of(context).size.height;
                                    var width =
                                        MediaQuery.of(context).size.width;

                                    return Container(
                                      height: height - 400,
                                      width: width - 150,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 200,
                                                width: 400,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(25),
                                                  image: new DecorationImage(
                                                    image: AssetImage(
                                                        "assets/RoadMap/6.png"),
                                                  ),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                        color: ProfilePageTheme
                                                            .grey
                                                            .withOpacity(0.2),
                                                        offset: const Offset(
                                                            1.1, 1.1),
                                                        blurRadius: 10.0),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Comfort',
                                                      fontSize: 17),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            Text(
                                              'Continuing on our previous list … here are some advanced topics to consider',
                                              style: description,
                                              textAlign: TextAlign.left,
                                            ),
                                            SizedBox(height: 10,),

                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Learn about Multithreading',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/training/multiple-threads';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Data Privacy',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://www.raywenderlich.com/6901838-data-privacy-for-android';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Securing Network Data',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://www.raywenderlich.com/5634-securing-network-data-tutorial-for-android';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),
                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Dependency Injection',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/training/dependency-injection';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),

                                            SizedBox(height: 10,),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: '• Content Providers',
                                                    style: onTapText,
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        const url = 'https://developer.android.com/guide/topics/providers/content-providers';
                                                        if (await canLaunch(url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        } else {
                                                          throw 'Cant Launch';
                                                        }
                                                      })
                                              ]),
                                            ),





                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ));
                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),



                TimelineTile(
                  endChild: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/9.png",
                          width: imageWidth,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Keep Learning',
                                  style: tileStyle,
                                  textAlign: TextAlign.center),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Keep growing, technology escalates really high, and so shall you!',
                                style: fellow,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Color(0xFFffffff),
                            title: Text(
                              "Keep Learning",
                              style: alert,
                              textAlign: TextAlign.center,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            content: Builder(
                              builder: (context) {
                                var height =
                                    MediaQuery.of(context).size.height;
                                var width =
                                    MediaQuery.of(context).size.width;

                                return Container(
                                  height: height - 400,
                                  width: width - 150,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 200,
                                            width: 400,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadiusDirectional
                                                  .circular(25),
                                              image: new DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/9.png"),
                                              ),

                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Description',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Comfort',
                                                  fontSize: 17),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),


                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(text: 'I would highly recommend watching ', style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Comfort",
                                              fontSize: 15,
                                            ),),
                                            TextSpan(
                                                text: 'this free course ',
                                                style: onTapText,
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () async {
                                                    const url = 'https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012';
                                                    if (await canLaunch(url)) {
                                                      await launch(
                                                        url,
                                                      );
                                                    } else {
                                                      throw 'Cant Launch';
                                                    }
                                                  }),
                                            TextSpan(text: 'from google on Developing Android Apps with Kotlin. \n\nAlso, here are some of the resources to learn more about the topics listed above.', style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Comfort",
                                              fontSize: 15,
                                            ),),
                                          ]),

                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: '• Developing Android Apps with Kotlin',
                                                style: onTapText,
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () async {
                                                    const url = 'https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012';
                                                    if (await canLaunch(url)) {
                                                      await launch(
                                                        url,
                                                      );
                                                    } else {
                                                      throw 'Cant Launch';
                                                    }
                                                  })
                                          ]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: '• Android Developer Guides',
                                                style: onTapText,
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () async {
                                                    const url = 'https://developer.android.com/guide';
                                                    if (await canLaunch(url)) {
                                                      await launch(
                                                        url,
                                                      );
                                                    } else {
                                                      throw 'Cant Launch';
                                                    }
                                                  })
                                          ]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: '• Raywenderlich',
                                                style: onTapText,
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () async {
                                                    const url = 'https://www.raywenderlich.com/';
                                                    if (await canLaunch(url)) {
                                                      await launch(
                                                        url,
                                                      );
                                                    } else {
                                                      throw 'Cant Launch';
                                                    }
                                                  })
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ));

                    },
                  ),
                  alignment: TimelineAlign.center,
                  lineXY: 0.1,
                  indicatorStyle: indicator,
                  beforeLineStyle: style2,
                ),












                Container(
                  height: 95,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                'Referring to the original author and for more details about the roadmap,\n',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Comfort",
                                color: Colors.black)),
                        TextSpan(
                            text: 'Click Here',
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: "Comfort",
                              fontSize: 17,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                const url = 'https://roadmap.sh/android';
                                if (await canLaunch(url)) {
                                  await launch(
                                    url,
                                  );
                                } else {
                                  throw 'Cant Launch';
                                }
                              })
                      ]),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(15),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: ProfilePageTheme.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
                image: new DecorationImage(
                    image: AssetImage("assets/quiz/mobile.jpg"),
                    fit: BoxFit.cover),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: ProfilePageTheme.grey.withOpacity(0.2),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

import '../Profile_Page_theme.dart';

class TitleView extends StatelessWidget {
  const TitleView(
      {required this.animationController,
      required this.animation,
      this.titleTxt = '',
      this.subTxt = '',
      Key? key})
      : super(key: key);

  final String titleTxt;
  final String subTxt;
  final AnimationController animationController;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, _) {
        return Material(
          color: ProfilePageTheme.background,
          child: FadeTransition(
            opacity: animation,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 30 * (1.0 - animation.value), 0.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      child: Text(
                        titleTxt,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontFamily: ProfilePageTheme.fontName,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          color: ProfilePageTheme.lightText,
                        ),
                      ),
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(4.0)),

                      onTap: () async {
                        if (subTxt=="Pick Date")
                        DateTime? newDateTime = await showRoundedDatePicker(
                          context: context,
                          height: 300,
                          fontFamily: "Comfort",
                            styleDatePicker: MaterialRoundedDatePickerStyle(
                              textStyleDayButton: TextStyle(fontSize: 36, color: Colors.white),
                             paddingMonthHeader: EdgeInsets.only(top: 13),
                              textStyleDayOnCalendarSelected: TextStyle(fontSize: 15, color: Colors.white,fontFamily: "Comfort"),
                              textStyleCurrentDayOnCalendar: TextStyle(fontSize: 15, color: Colors.red,fontFamily: "Comfort", fontWeight: FontWeight.bold),
                            ),
                          theme: ThemeData(

                            primaryColor: Colors.indigo,
                            accentColor: Colors.indigo,
                            dialogBackgroundColor: Colors.white,
                            textTheme: TextTheme(
                              bodyText2: TextStyle(color: Colors.black),
                              caption: TextStyle(color: Colors.blue),
                              button: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Comfort",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),

                            disabledColor: Colors.orange,
                            accentTextTheme: TextTheme(
                              bodyText1: TextStyle(color: Colors.green[200]),
                            ),
                            textSelectionTheme: TextSelectionThemeData(
                                selectionColor: Colors.pinkAccent),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(

                          children: <Widget>[

                            Text(
                              subTxt,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontFamily: ProfilePageTheme.fontName,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                letterSpacing: 0.5,
                                color: ProfilePageTheme.nearlyDarkBlue,
                              ),
                            ),

                            const SizedBox(
                              height: 38,
                              width: 26,
                              child: Icon(
                                Icons.arrow_forward,
                                color: ProfilePageTheme.darkText,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

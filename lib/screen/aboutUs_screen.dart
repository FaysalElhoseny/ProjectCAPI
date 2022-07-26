

import 'package:capi/Side_Menu/menu_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextStyle contact =TextStyle(fontFamily: "Comfort", fontSize: 15);
TextStyle des =TextStyle(fontFamily: "Comfort", fontSize: 20);
TextStyle cont = TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontFamily: "Comfort", fontSize: 20);
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(
          'About Us',style: TextStyle(color: Colors.black, fontFamily: "Comfort"),

        ),
        centerTitle: true,
        leading: MenuWidget(),
        elevation: 0,
        backgroundColor: Color(0xffeeeeee),
      ),
      backgroundColor: Color(0xffeeeeee),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Image.asset("assets/images/about.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 40, right: 40,bottom: 20),
            child: Center(child: Text("If You have any problem feel free to contact us", style: des,textAlign:TextAlign.center ,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, ),
            child: Center(child: Text("Contact Information", style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Comfort"),textAlign: TextAlign.start,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,),
            child: Center(
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                          'Faysal Elhouseiny',
                          style: cont ,
                          recognizer:
                          TapGestureRecognizer()
                            ..onTap = () => launch("tel://01110892011"),
                            ),
                    ]),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                          'Mohamed Hossam',
                          style: cont ,
                          recognizer:
                          TapGestureRecognizer()
                            ..onTap = () => launch("tel://01024920445"),),
                    ]),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                          'Mohamed Helmy',
                          style: cont ,
                          recognizer:
                          TapGestureRecognizer()
                            ..onTap = () => launch("tel://01017107797"),),
                    ]),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                          'Mohamed Salah',
                          style: cont ,
                          recognizer:
                          TapGestureRecognizer()
                            ..onTap = () => launch("tel://01143925746"),),
                    ]),
                  ),




                ],
              ),
            ),
          ),






          // Padding(
          //   padding: EdgeInsets.only(top:80,),
          //   child: Center(
          //     child: RichText(
          //       textAlign: TextAlign.left,
          //       text: TextSpan(children: [
          //         TextSpan(
          //             text:
          //             'Source Code',
          //             style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontFamily: "Comfort", fontSize: 20),
          //             recognizer:
          //             TapGestureRecognizer()
          //               ..onTap = () async {
          //                 const url =
          //                     'https://github.com/FaysalElhoseny/Capi';
          //                 if (await canLaunch(
          //                     url)) {
          //                   await launch(
          //                     url,
          //                   );
          //                 } else {
          //                   throw 'Cant Launch';
          //                 }
          //               })
          //       ]),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Text(
                '© All Rights Reserved',
                style: TextStyle(
                    color: Colors.grey, fontSize: 15, fontFamily: 'Comfort'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

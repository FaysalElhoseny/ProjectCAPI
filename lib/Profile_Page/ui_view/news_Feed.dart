import 'package:capi/Profile_Page/Profile_Page_theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextStyle news =TextStyle(fontFamily: "Comfort", fontSize: 16,);

Widget NewsFeed({
  Color color = Colors.white,
}) {

  return Padding(
    padding: const EdgeInsets.only(right: 15, top:10, left: 15,bottom: 50),
    child: Column(
      children: [
        InkWell(
          onTap: () async {
            const url =
                'https://wuzzuf.net/a/Mobile-Developer-Jobs-in-Egypt';
            if (await canLaunch(url)) {
              await launch(
                url,
              );
            } else {
              throw 'Cant Launch';
            }
          },
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadiusDirectional.circular(15),
              image: new DecorationImage(
                image: new AssetImage("assets/Profile_Page/wuzzuf.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: ProfilePageTheme.grey.withOpacity(0.2),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 10.0),
              ],
            ),

          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5,),
            Text('Mobile Developer Jobs in Egypt ',style: news,textAlign: TextAlign.start,),
          ],
        ),
        SizedBox(height: 30,),
        Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadiusDirectional.circular(15),
              image: new DecorationImage(
                image: new AssetImage("assets/Profile_Page/TopCompanies.jpg"),
                fit: BoxFit.cover,
              ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: ProfilePageTheme.grey.withOpacity(0.2),
                  offset: const Offset(1.1, 1.1),
                  blurRadius: 10.0),

            ],
          ),

        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5,),
            Flexible(child: Text('Top Mobile App Development Companies in 2022',style:news,textAlign: TextAlign.start,)),
          ],
        ),
        SizedBox(height: 30,),
        Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadiusDirectional.circular(15),
            image: new DecorationImage(
              image: new AssetImage("assets/Profile_Page/google.png"),
              fit: BoxFit.cover,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: ProfilePageTheme.grey.withOpacity(0.2),
                  offset: const Offset(1.1, 1.1),
                  blurRadius: 10.0),

            ],
          ),

        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 5,),
            Flexible(child: Text('Google offers privacy audit tool to app developers',style:news, textAlign: TextAlign.start,)),
          ],
        ),
      ],
    ),
  );
}


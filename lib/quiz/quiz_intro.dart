import 'package:capi/quiz/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
TextStyle intro = TextStyle(fontFamily: 'Comfort', fontSize: 16, color: Colors.black);
class QuizIntro extends StatelessWidget {
  const QuizIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6fe),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Flexible(child: Text("Lets Start by Taking a Quick Test !", style: intro,)),
            ],
          ),
          SizedBox(height: 30,),
          Image.asset('assets/quiz/quiz_intro.jpg'),

          SizedBox(width: 30,),

          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Text("Think Carefully and Pick The Choice That Fits You The Most",style: intro,textAlign: TextAlign.center,),
          ),
        ],



      ),
      bottomSheet: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff03A9F4),
            minimumSize: Size(700, 55),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
          onPressed: (){
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
                  (Route<dynamic> route) => false,
            );
          },
          child: Text('Start Quiz',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Comfort'))),
    );
  }
}


import 'package:capi/quiz/constants.dart';
import 'package:capi/quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'progress_bar.dart';
import 'question_card.dart';


class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // So that we have access our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(

      children: [
        Image(image: AssetImage("assets/quiz/background.jpg")
          ,

          height: double.infinity,
          fit: BoxFit.fill,


        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: 15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",

                      style: TextStyle(color: kSecondaryColor, fontSize: 18, fontFamily: 'Comfort'),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",

                          style: TextStyle(color: kSecondaryColor, fontSize: 18, fontFamily: 'Comfort',),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Divider(thickness: 1.5),
              SizedBox(height: 15),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

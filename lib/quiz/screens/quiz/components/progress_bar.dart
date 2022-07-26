
import 'package:capi/quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


import '../../../constants.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  QuestionController _questionController = Get.put(QuestionController());

  int checkProgress() {
    if (_questionController.questionNumber.value == 1) return 0;
    return _questionController.questionNumber.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _questionController.questions.length * 11.toDouble(),
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor, width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              // LayoutBuilder provide us the available space for the container
              // constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: _questionController.questionNumber.value *
                      10.1.toDouble(),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

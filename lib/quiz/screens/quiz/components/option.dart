import 'package:capi/quiz/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.selectedAns ) {
                return kGreenColor;
              }
            }
            return kBlackColor;
          }


          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Text(
                      "$text",
                      style: TextStyle(color: kBlackColor, fontSize: 16, fontFamily: 'Comfort'),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

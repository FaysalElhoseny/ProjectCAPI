
import 'package:capi/quiz/models/Questions.dart';
import 'package:capi/quiz/screens/quiz/quiz_screen.dart';
import 'package:capi/quiz/screens/result/result_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';


// We use get package for our state management

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Lets animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
      id: question['id'],
      question: question['question'],
      options: question['options'],
    ),
  )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;


  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get results => this._numOfCorrectAns;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60 s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation

    // _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _selectedAns = selectedIndex;

    // analyzing answers
    if (selectedIndex == 0) _numOfCorrectAns= _numOfCorrectAns +1;
    else if (selectedIndex ==1) _numOfCorrectAns = _numOfCorrectAns+2;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 1s it will go to the next qn
    Future.delayed(Duration(milliseconds:100), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(microseconds:200), curve: Curves.ease);
      _animationController.reset();




    } else {
      // Get package provide us simple way to navigate another page
      Get.offAll(ResultScreen());
    }
  }

  void retakeQuiz(){
    _numOfCorrectAns=0;
    _animationController.stop();
    _isAnswered = false;
    _questionNumber.value=1;
    Get.offAll(QuizScreen());
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}

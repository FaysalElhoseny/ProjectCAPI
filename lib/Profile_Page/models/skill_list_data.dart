import 'package:flutter/material.dart';

class SkillListData {
  SkillListData({
    required this.meals,
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = Colors.grey,
    this.endColor = Colors.grey,
    this.explore = "",
  });

  String imagePath;
  String titleTxt;
  Color startColor;
  Color endColor;
  List<String> meals;
  String explore;

  static List<SkillListData> tabIconsList = <SkillListData>[
    SkillListData(
      imagePath: 'assets/images/java.png',
      titleTxt: 'JAVA',
      explore: 'Explore',
      meals: <String>['OOP,', 'Lists, Loops', 'Advanced'],
      startColor: const Color(0xFF40D8FF),
      endColor: const Color(0xFF0990B3),
    ),
    SkillListData(
      imagePath: 'assets/images/kotlin.png',
      titleTxt: 'KOTLIN',
      explore: 'Explore',
      meals: <String>['Basic,', 'Intermediate', 'Advanced'],
      startColor: const Color(0xFF738AE6),
      endColor: const Color(0xFF5C5EDD),
    ),
    SkillListData(
      imagePath: 'assets/images/api.png',
      titleTxt: 'APIs',
      explore: 'Explore',
      meals: <String>['Design', 'Security','Gateways'],
      startColor: const Color(0xFFFE95B6),
      endColor: const Color(0xFFFF5287),
    ),
  ];
}

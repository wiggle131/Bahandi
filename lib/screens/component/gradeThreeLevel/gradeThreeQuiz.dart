import 'package:e_commerce/screens/component/gradeThreeLevel/gradeThreeQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/component/gradeThreeLevel/gradeThreeQuizBody.dart';
import 'package:get/get.dart';

class GradeThreeQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThreeQuestionController _controller = Get.put(ThreeQuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Quiz - Grade Three Level"),
        backgroundColor: Colors.green,
        actions: [
          TextButton(onPressed: _controller.nextQuest, child: Text("Skip"))
        ],
      ),
      body: GradeThreeQuizBody(),
    );
  }
}

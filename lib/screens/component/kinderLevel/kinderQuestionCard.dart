import 'kinderQuestionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'kinderQuestions.dart';
import 'kinderChoices.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    AllQuestionController xController = Get.put(AllQuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(question.image),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            Text(
              question.question,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            ...List.generate(
                question.options.length,
                (index) => Choices(
                    index: index,
                    text: question.options[index],
                    press: () => xController.check(question, index)
                )
            ),
          ],
        ),
      ),
    );
  }
}

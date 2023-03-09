import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answers.dart';

class QuizPage extends StatelessWidget {
  const QuizPage(this.question, this.questionIndex, this.answerQuestion,
      {super.key});
  //استقبال القيم
  final List<Map<String, Object>> question;
  final int questionIndex;
  // ignore: prefer_typing_uninitialized_variables
  final Function(int sco) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionPage(
            //الوصول للاسئلة من الائحة عن طريق المفتاح
            question[questionIndex]['questionText'].toString()),
        //الوصول للاجوبة من الائحة عن طريق المفتاح
        ...(question[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return AnswerPage(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class QuestionPage extends StatelessWidget {
  //استقبال قيمة السؤال وتخزينها في المتغير
  final String questionText;
  const QuestionPage(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30,
            color: isSwitched == false ? Colors.black : Colors.white,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

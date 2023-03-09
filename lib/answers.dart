import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {
  //متغير سيمرر للنص ودالة ستمرر لعند الضغط
  final String answerText;
  final Function() x;
  const AnswerPage(this.x, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          onPressed: x,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

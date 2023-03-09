import 'package:flutter/material.dart';

import 'main.dart';

class ResultPage extends StatelessWidget {
  final Function() resetQ;
  final int resultScore;
  const ResultPage(
      {super.key, required this.resetQ, required this.resultScore});

  String get resultPhrase {
    String resulText;
    if (resultScore >= 70) {
      resultScore;
      resulText = "Your Are Awesome !";
    } else if (resultScore >= 40) {
      resulText = "Pretty Likable !";
    } else {
      resulText = "Your Are So Bad !";
    }
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Scoure is $resultScore',
            style: TextStyle(
                fontSize: 35,
                color: isSwitched == false ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 45,
                color: isSwitched == false ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: resetQ,
            child: const Text(
              //الIndex حتى تعود  للسؤال الاول لازم تصفر
              "Restar The App ",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}

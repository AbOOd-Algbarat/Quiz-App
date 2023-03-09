import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(const MApp());

class MApp extends StatefulWidget {
  const MApp({super.key});

  @override
  State<MApp> createState() => _MAppState();
}

// Color w = Colors.white;
// Color b = Colors.black;
bool isSwitched = false;

class _MAppState extends State<MApp> {
  int _questionIndex = 0;
  int _totalScor = 0;

//fun لجعل الاندكس صفر
  void _resetQuiz() {
    setState(() {
      _totalScor = 0;
      _questionIndex = 0;
    });
  }

//رح يبيقى ثابت بالسؤال الاول لانوصار الاندس 0وزاد علية 1
  void answerQuestion(int score) {
    _totalScor += score;
    setState(() {
      _questionIndex += 1;
    });
    // print(_questionIndex);
    // print(_totalScor);
    // print("Answer Chosen !");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s Your Favaret Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'White', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favaret Animal? ',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Cat', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favaret Car? ',
      'answers': [
        {'text': 'BMW', 'score': 10},
        {'text': 'Toyota', 'score': 20},
        {'text': 'Merceds', 'score': 30},
        {'text': 'Obil', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favaret Brothers? ',
      'answers': [
        {'text': 'Mohammad', 'score': 10},
        {'text': 'Malik', 'score': 20},
        {'text': 'Abed', 'score': 30},
        {'text': 'Rashed', 'score': 40},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawerEnableOpenDragGesture: false,
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
              color: isSwitched == false ? Colors.white : Colors.black,
            ),
          ),
          actions: [
            Switch(
              value: isSwitched,
              //bool value==>T or F
              onChanged: (value) {
                // //لازم تستخدم
                setState(
                  () {
                    //عملت شرط لتغير لون الخلفية
                    isSwitched = value;
                    // if (isSwitched == true) {
                    //   b = Colors.white;
                    //   w = Colors.black;
                    // }
                    // if (isSwitched == false) {
                    //   b = Colors.black;
                    //   w = Colors.white;
                    // }
                  },
                );
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        body: Container(
          color: isSwitched == false ? Colors.white : Colors.black,
          child: _questionIndex < _question.length
              ? QuizPage(_question, _questionIndex, answerQuestion)
              //الشطر الثاني من الشرط
              //رح يرجعك للبداية
              //ايضا سعرض الدرحات
              : ResultPage(resetQ: () => _resetQuiz(), resultScore: _totalScor),
        ),
      ),
    );
  }
}

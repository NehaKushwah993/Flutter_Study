import 'package:flutter/material.dart';
import 'package:flutter_quiz/QuizQuestions.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  QuizQuestions quizQuestions = QuizQuestions();
  List<Icon> answers = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  quizQuestions.getQuestion(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: Container(
                width: double.infinity,
                color: Colors.green,
                height: 50,
                child: Center(
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Container(
                width: double.infinity,
                color: Colors.red,
                height: 50,
                child: Center(
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: answers,
              ),
            ),
          )
        ],
      ),
    );
  }

  void checkAnswer(bool answer) {
    setState(() {
      if (quizQuestions.isFinished()) {
        quizQuestions.reset();
        answers.clear();
        showCompletion();
      } else {
        if (quizQuestions.isCorrectAnswer(answer)) {
          print("true");

          answers.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          print("false");

          answers.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        quizQuestions.moveToNext();
      }
    });
  }

  void showCompletion() {
    showDialog(
        context: context,
        builder: (_) => NetworkGiffyDialog(
              title: Text('Congratulations!',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
              description: Text(
                'You have completed all rounds!',
                textAlign: TextAlign.center,
              ),
              onlyCancelButton: true,
              entryAnimation: EntryAnimation.BOTTOM,
              image: Image.network(
                "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                fit: BoxFit.cover,
              ),
            ));
  }
}

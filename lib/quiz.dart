import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  final List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  switchScreen()
  {
    setState(() {
      activeScreen = 'questions-screen';
      
    });
  }

  void chooseAnswers(String answer) // use to add the answers of all questions in list and then compares the
                                    // selected answer with total questions if true -> it takes to start-screen
  {
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length)
    {
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // condition
    var currentScreen = activeScreen == 'start-screen' ? StartScreen(switchScreen) : QuesionsScreen(onSelectedAnswer: chooseAnswers);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 23, 53, 58),
                Color.fromARGB(255, 2, 108, 114),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
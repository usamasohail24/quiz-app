import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
          ),
          const SizedBox(height: 80),
          const Text(
            'Welcome to Quiz App',
            style: TextStyle(
              color: Colors.amberAccent,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Color.fromARGB(255, 53, 157, 243),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.amberAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            'Welcome to Quiz App',
            style: GoogleFonts.lato(
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
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(
                color: Colors.amberAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
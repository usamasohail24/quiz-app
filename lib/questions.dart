import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuesionsScreen> createState() => _QuesionsScreenState();
}

class _QuesionsScreenState extends State<QuesionsScreen> {

  var questionIndex = 0;

  void currentquestionIndex(String selectedAnswers) // use to jump to next question
  {
    widget.onSelectedAnswer(selectedAnswers);
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.amberAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffledList().map((answer) // shuffling the list of answers
            {
              return Column(
                children: [
                  AnswerButton(answer, ()
                  {
                    currentquestionIndex(answer);
                  }
                  ),
                  const SizedBox(height: 10), 
                  ],
               );
              }
            ),
          ],
        ),
      ),
    );
  }
}
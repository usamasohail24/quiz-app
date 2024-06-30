import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen({super.key});

  @override
  State<QuesionsScreen> createState() => _QuesionsScreenState();
}

class _QuesionsScreenState extends State<QuesionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.amberAccent,
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.options.map((answer) {
            return Column(
              children: [
                AnswerButton(answer, () {
                 
                }),
              const SizedBox(height: 10), 
              ],
            );
          }),
        ],
      ),
    );
  }
}
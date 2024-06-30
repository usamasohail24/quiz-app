import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen({super.key});

  @override
  State<QuesionsScreen> createState() => _QuesionsScreenState();
}

class _QuesionsScreenState extends State<QuesionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(
              color: Colors.amberAccent,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton('Option 1', () {}),
          const SizedBox(height: 10),
          AnswerButton('Option 2', () {}),
          const SizedBox(height: 10),
          AnswerButton('Option 3', () {}),
          const SizedBox(height: 10),
          AnswerButton('Option 4', () {}),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/src/data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...quizQuestions.map((question) {
            return Text(
              question.userAnsware?.text ?? '',
              style: GoogleFonts.lato(
                  color: (question.userAnsware?.isCorrectAnsware ?? false)
                      ? Colors.green
                      : Colors.red,
                  fontSize: 20),
            );
          })
        ],
      ),
    );
  }
}

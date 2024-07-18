import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/src/answare_button.dart';
import 'package:quiz_app/src/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestion = 0;

  void updateCurrentQuestion() {
    setState(() {
      if (currentQuestion < quizQuestions.length - 1) {
        ++currentQuestion;
      } else {
        currentQuestion = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                quizQuestions[currentQuestion].text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  color: const Color.fromRGBO(255, 185, 255, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...quizQuestions[currentQuestion]
                .getShuffledAnswares()
                .map((answare) {
              return AnswareButton(
                answare.text,
                onButtonPressed: updateCurrentQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}

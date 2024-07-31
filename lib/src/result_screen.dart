import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/src/data/questions.dart';
import 'package:quiz_app/src/questions_summary.dart';
import 'package:quiz_app/src/utils/quiz_questions_utils.dart';
class ResultScreen extends StatelessWidget {
  final void Function()? onRestartQuiz;
  const ResultScreen({super.key, this.onRestartQuiz});

  getQuizResult(){
    List<Map<String, Object>> userQuizResult = [];

    for(var i = 0; i < quizQuestions.length; i++) {
      userQuizResult.add(
        {
          'question_index': i + 1,
          'question': quizQuestions[i].text,
          'correct_answare': quizQuestions[i].getCorrectAnsware().text,
          'user_answare': quizQuestions[i].userAnsware?.text ?? '',
          'is_correct_answare': quizQuestions[i].userAnsware?.isCorrectAnsware ?? false
        }
      );
    }

  return userQuizResult;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'You answered ${QuizQuestionsUtils.getNumberOfCorrectUserAnswares(questions: quizQuestions)} out of ${QuizQuestionsUtils.getNumberOfQuestions(questions: quizQuestions)} questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(fontSize: 24),
            ),
          ),
          const SizedBox(height: 30),
          QuestionsSummary(questionsSummary: getQuizResult()),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: () {
              if(onRestartQuiz != null){
                QuizQuestionsUtils.resetAnswareQuestions(questions: quizQuestions);
                onRestartQuiz!();
              }
            },
            label: const Text('Restart Quiz!'),
            icon: const Icon(Icons.restart_alt_sharp),
          ),
        ],
      ),
    );
  }
}

import 'package:quiz_app/src/models/quiz_question.dart';

abstract class QuizQuestionsUtils {
  static void resetAnswareQuestions({required List<QuizQuestion> questions}) {
    for (var question in questions) {
      question.reset();
    }
  }

  static getNumberOfCorrectUserAnswares({required List<QuizQuestion> questions}) {
    var numberCorrectUserAnsware = 0;
    for (var question in questions) {
      if (question.userAnsware?.isCorrectAnsware ?? false) {
        numberCorrectUserAnsware++;
      }
    }

    return numberCorrectUserAnsware;
  }

    static getNumberOfQuestions({required List<QuizQuestion> questions}) {
    return questions.length;
  }
}

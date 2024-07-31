import 'package:quiz_app/src/models/quiz_answare.dart';

class QuizQuestion {
  final String text;
  final List<QuizAnsware> answers;
  QuizAnsware? userAnsware;

  QuizQuestion({required this.text, required this.answers});

  List<QuizAnsware> getShuffledAnswares() {
    final shuffledAnswares = List.of(answers);
    shuffledAnswares.shuffle();
    return shuffledAnswares;
  }

  void setUserAnsware(QuizAnsware answare) {
    userAnsware = answare;
  }

  QuizAnsware getCorrectAnsware() {
    return answers.firstWhere(
      (answare) {
        return answare.isCorrectAnsware;
      },
    );
  }

  void reset() {
    userAnsware = null;
  }
}

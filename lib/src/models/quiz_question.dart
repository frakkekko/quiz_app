import 'package:quiz_app/src/models/quiz_answare.dart';

class QuizQuestion {
  final String text;
  final List<QuizAnsware> answers;

  QuizQuestion({required this.text, required this.answers});

  List<QuizAnsware> getShuffledAnswares() {
    final shuffledAnswares = List.of(answers);
    shuffledAnswares.shuffle();
    return shuffledAnswares;
  }
}
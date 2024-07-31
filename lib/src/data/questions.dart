
import 'package:quiz_app/src/models/quiz_answare.dart';
import 'package:quiz_app/src/models/quiz_question.dart';

final List<QuizQuestion> quizQuestions = [
  QuizQuestion(
    text: 'What are the main building blocks of flutter UIs?',
    answers: [
      const QuizAnsware('Widgets', isCorrectAnsware: true),
      const QuizAnsware('Components'),
      const QuizAnsware('Blocks'),
      const QuizAnsware('Functions'),
    ],
  ),
  QuizQuestion(
    text: 'How are Flutter UIs built?',
    answers: [
      const QuizAnsware('By combining widgets in code', isCorrectAnsware: true),
      const QuizAnsware('By combining widgets in a visual editor'),
      const QuizAnsware('By defining widgets in config files'),
      const QuizAnsware('By using XCode for iOS and Android Studio for Android'),
    ],
  ),
  QuizQuestion(
    text: 'What\'s the purpose of a StatefulWidget?',
    answers: [
      const QuizAnsware('Update UI as data changes', isCorrectAnsware: true),
      const QuizAnsware('Update data as UI changes'),
      const QuizAnsware('Ignore data changes'),
      const QuizAnsware('Render UI that does not depend on data'),
    ],
  ),
  QuizQuestion(
    text: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      const QuizAnsware('StatelessWidget', isCorrectAnsware: true),
      const QuizAnsware('StatefulWidget'),
      const QuizAnsware('Both are equally good'),
      const QuizAnsware('None of the above'),
    ],
  ),
  QuizQuestion(
    text: 'What happens if you change data in a StatelessWidget?',
    answers: [
      const QuizAnsware('The UI is not updated', isCorrectAnsware: true),
      const QuizAnsware('The UI is updated'),
      const QuizAnsware('The closest StatefulWidget is updated'),
      const QuizAnsware('Any nested StatefulWidgets are updated'),
    ],
  ),
  QuizQuestion(
    text: 'How should you update data inside of StatefulWidgets?',
    answers: [
      const QuizAnsware('By calling setState()', isCorrectAnsware: true),
      const QuizAnsware('By calling updateData()'),
      const QuizAnsware('By calling updateUI()'),
      const QuizAnsware('By calling updateState()'),
    ],
  ),
];


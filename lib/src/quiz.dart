import 'package:flutter/material.dart';
import 'package:quiz_app/src/questions_screen.dart';
import 'package:quiz_app/src/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(onStartButtonPressed: switchScreen);
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 100, 47, 224),
                Color.fromARGB(255, 47, 21, 83)
              ])),
          child: activeScreen,
        ),
      ),
    );
  }
}

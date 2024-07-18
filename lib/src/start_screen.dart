import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function()? onStartButtonPressed;

  const StartScreen({super.key, this.onStartButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromRGBO(255, 185, 255, 1),
            width: 300,
          ), 
        ),
        const SizedBox(height: 80),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color:const Color.fromRGBO(255, 185, 255, 1),
            fontSize: 24
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: onStartButtonPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz!',
            style: TextStyle(color: Color.fromRGBO(255, 185, 255, 1)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AnswareButton extends StatelessWidget {
  final String label;
  final void Function()? onButtonPressed;

  const AnswareButton(
    this.label, {
    super.key,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onButtonPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 33, 1, 95),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
            ),
            
        child: Text(label),
      );
  }
}

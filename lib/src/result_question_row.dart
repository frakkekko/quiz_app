import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultQuestionRow extends StatelessWidget {
  final Map<String, Object> data;

  const ResultQuestionRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: data['is_correct_answare'] as bool
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        (data['question_index'] as int).toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answare'] as String,
                            style: GoogleFonts.lato(fontSize: 14)),
                        Text(data['correct_answare'] as String,
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.green)),
                      ],
                    ),
                  )
                ],
              );
  }
}
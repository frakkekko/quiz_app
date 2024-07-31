import 'package:flutter/material.dart';
import 'package:quiz_app/src/result_question_row.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> questionsSummary;

  const QuestionsSummary({
    super.key,
    required this.questionsSummary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: questionsSummary.map((data) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: ResultQuestionRow(data: data)
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.data,
  });
  final Map<String, Object> data;
  @override
  Widget build(context) {
    final bool isCorrectAnswer = data['user_answer'] == data['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: data['question_index'] as int),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                data['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 235, 194, 241),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 183, 219, 244),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

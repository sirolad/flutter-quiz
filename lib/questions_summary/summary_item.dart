import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          children: [
            QuestionIdentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemData['question'] as String,
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  isCorrectAnswer
                      ? const SizedBox()
                      : Text(
                          itemData['user_answer'] as String,
                          style: GoogleFonts.notoSans(
                            color: const Color.fromARGB(255, 227, 67, 39),
                          ),
                        ),
                  Text(
                    itemData['correct_answer'] as String,
                    style: GoogleFonts.notoSans(
                      color: const Color.fromARGB(255, 4, 122, 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

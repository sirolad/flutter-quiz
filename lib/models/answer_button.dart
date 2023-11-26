import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(
          255,
          62,
          153,
          217,
        ),
      ),
      child: Text(
        answerText,
        style: GoogleFonts.notoSans(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

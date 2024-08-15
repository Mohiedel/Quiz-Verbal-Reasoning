import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectButton extends StatelessWidget {
  const SelectButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/image/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(73, 255, 255, 255),
        ),
        const SizedBox(height: 60),
        Text(
          'Test Your Verbal Reasoning Knowledge!',
          style: GoogleFonts.gupter(
            color: Colors.white,
              fontSize: 35.0,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade800,
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        ),
      ],
    );
  }
}

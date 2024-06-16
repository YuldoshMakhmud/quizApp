import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/photo_2024-06-15_12-19-34.jpg.png',
          width: 400,
          color: Colors.white,
        ),
        const SizedBox(
          height: 70,
        ),
        const Text(
          "Learn Reading the fun way",
          style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}

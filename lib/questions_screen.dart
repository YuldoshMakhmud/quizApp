import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("the questions..."),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Answer1')),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Answer2')),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Answer3')),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Answer4')),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Answer5')),
        ],
      ),
    );
  }
}

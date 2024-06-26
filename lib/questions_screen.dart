import 'package:flutter/cupertino.dart';
import 'package:quiz/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer,});
final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
var currentQuestionIndex= 0;

void answerQuestion(String selectedAnswer){
  widget.onSelectedAnswer(selectedAnswer);
  // currentQuestionIndex= currentQuestionIndex + 1;
  // currentQuestionIndex += 1;
  setState(() {
    currentQuestionIndex++;  // increments the value by 1
  });
}

  @override
  Widget build( context) {
    final currentQuestion = questions[currentQuestionIndex];

    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        
          children: [
             SingleChildScrollView(
               child: Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                  color:  Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                 textAlign: TextAlign.start,
                           ),
             ),
            const SizedBox(height: 40),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: (){
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

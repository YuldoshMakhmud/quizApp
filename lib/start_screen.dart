import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/book.dart';
import 'package:url_launcher/url_launcher.dart';



class StartScreen extends StatelessWidget {
  const StartScreen(  this.startQuiz,{super.key});

  void _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch('https://t.me/EnglishwithMumtoza')) {
      await launch('https://t.me/EnglishwithMumtoza');
    } else {
      throw 'Could not launch $url';
    }
  }

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
        OutlinedButton.icon(
          onPressed: _launchURL,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.telegram),
          label: const Text("Our Chanel"),
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          "Learn Reading the fun way",
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 237, 223, 252),
            fontSize: 24,
          )
        ),
        OutlinedButton.icon(onPressed:  (){
          Navigator.push(context,
              MaterialPageRoute(builder:(context) => const MyPdfViewer())

          );

        },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("A Resource for Reading & Words"),
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

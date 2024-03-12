import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz_mark.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 237, 223, 252),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}

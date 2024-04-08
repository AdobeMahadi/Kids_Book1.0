import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class StorAlphabet extends StatelessWidget {
  StorAlphabet({super.key, required this.Character});
  final String Character;
  final FlutterTts fluttertts = FlutterTts();

  speak(String text) async {
    await fluttertts.setLanguage('en-us');
    await fluttertts.setPitch(1);
    await fluttertts.speak(text);
    await fluttertts.setVolume(1.5);
    await fluttertts.setSpeechRate(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => speak(Character),
      child: Container(
        alignment: Alignment.center,
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurpleAccent,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 10,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer),
            ]),
        child: Text(
          Character,
          style: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

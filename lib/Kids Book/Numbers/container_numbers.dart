import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class storenumbers extends StatelessWidget {
  storenumbers({super.key, required this.digit});
  final String digit;
  final FlutterTts fluttertts = FlutterTts();
  speak(String digit) async {
    await fluttertts.setLanguage('en-us');
    await fluttertts.setPitch(1);
    await fluttertts.speak(digit);
    await fluttertts.setVolume(1.5);
    await fluttertts.setSpeechRate(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => speak(digit),
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
          digit,
          style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

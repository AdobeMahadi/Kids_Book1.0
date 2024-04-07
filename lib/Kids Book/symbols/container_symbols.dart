import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreSymbols extends StatelessWidget {
  StoreSymbols({super.key, required this.sign});
  final String sign;
  final FlutterTts flutterTts = FlutterTts();

  speak(String sign) async {
    await flutterTts.setLanguage('en-us');
    await flutterTts.setPitch(1);
    await flutterTts.speak(sign);
    await flutterTts.setVolume(1.5);
    await flutterTts.setSpeechRate(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => speak(sign),
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
          child: Text(sign,
              style: GoogleFonts.notoSans(
                  textStyle: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        ));
  }
}

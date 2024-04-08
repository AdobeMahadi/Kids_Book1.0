import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/Kids%20Book/Alphabet/container_aphabet.dart';
import 'package:sample_project/Kids%20Book/home_screen.dart';

class Alphabat extends StatefulWidget {
  const Alphabat({super.key});

  @override
  State<Alphabat> createState() => _AlphabatState();
}

class _AlphabatState extends State<Alphabat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent[50],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const home_screen())));
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pinkAccent),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 200,
                      child: Text(
                        'Alphabet',
                        style: GoogleFonts.concertOne(
                            textStyle: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        StorAlphabet(
                          Character: 'A',
                        ),
                        StorAlphabet(
                          Character: 'B',
                        ),
                        StorAlphabet(
                          Character: 'C',
                        ),
                        StorAlphabet(
                          Character: 'D',
                        ),
                        StorAlphabet(
                          Character: 'E',
                        ),
                        StorAlphabet(
                          Character: 'F',
                        ),
                        StorAlphabet(
                          Character: 'G',
                        ),
                        StorAlphabet(
                          Character: 'H',
                        ),
                        StorAlphabet(
                          Character: 'I',
                        ),
                        StorAlphabet(
                          Character: 'J',
                        ),
                        StorAlphabet(
                          Character: 'K',
                        ),
                        StorAlphabet(
                          Character: 'L',
                        ),
                        StorAlphabet(
                          Character: 'M',
                        ),
                        StorAlphabet(
                          Character: 'N',
                        ),
                        StorAlphabet(
                          Character: 'O',
                        ),
                        StorAlphabet(
                          Character: 'P',
                        ),
                        StorAlphabet(
                          Character: 'Q',
                        ),
                        StorAlphabet(
                          Character: 'R',
                        ),
                        StorAlphabet(
                          Character: 'S',
                        ),
                        StorAlphabet(
                          Character: 'T',
                        ),
                        StorAlphabet(
                          Character: 'U',
                        ),
                        StorAlphabet(
                          Character: 'V',
                        ),
                        StorAlphabet(
                          Character: 'W',
                        ),
                        StorAlphabet(
                          Character: 'X',
                        ),
                        StorAlphabet(
                          Character: 'Y',
                        ),
                        StorAlphabet(
                          Character: 'Z',
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

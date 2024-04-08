import 'package:flutter/material.dart';
import 'package:sample_project/Kids%20Book/Numbers/container_numbers.dart';
import 'package:sample_project/Kids%20Book/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class numberpage extends StatelessWidget {
  const numberpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[50],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
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
                            builder: (context) => const home_screen()));
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
                  width: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 200,
                  child: Text(
                    "Numbers",
                    style: GoogleFonts.concertOne(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 50)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
                children: [
                  storenumbers(digit: '0'),
                  storenumbers(
                    digit: '1',
                  ),
                  storenumbers(digit: '2'),
                  storenumbers(digit: '3'),
                  storenumbers(digit: '4'),
                  storenumbers(digit: '5'),
                  storenumbers(digit: '6'),
                  storenumbers(digit: '7'),
                  storenumbers(digit: '8'),
                  storenumbers(digit: '9'),
                  storenumbers(digit: '10'),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

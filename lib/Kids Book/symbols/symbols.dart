import 'package:flutter/material.dart';
import 'package:sample_project/Kids%20Book/home_screen.dart';
import 'package:sample_project/Kids%20Book/symbols/container_symbols.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class symbolspage extends StatelessWidget {
  const symbolspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[50],
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
                      color: Colors.pink,
                    ),
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
                  height: 60,
                  width: 200,
                  child: Text(
                    "Symbols",
                    style: GoogleFonts.iceland(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                children: [
                  StoreSymbols(sign: '+'),
                  StoreSymbols(sign: '-'),
                  StoreSymbols(sign: '*'),
                  StoreSymbols(sign: '/'),
                  StoreSymbols(sign: '%'),
                  StoreSymbols(sign: '#'),
                  StoreSymbols(sign: '='),
                  StoreSymbols(sign: '!'),
                  StoreSymbols(sign: '@'),
                  StoreSymbols(sign: '?'),
                  StoreSymbols(sign: '&'),
                  StoreSymbols(sign: 'π'),
                  StoreSymbols(sign: 'α'),
                  StoreSymbols(sign: 'β'),
                  StoreSymbols(sign: 'γ'),
                  StoreSymbols(sign: 'Δ'),
                  StoreSymbols(sign: 'η'),
                  StoreSymbols(sign: 'ω'),
                  StoreSymbols(sign: 'Σ'),
                  StoreSymbols(sign: 'θ'),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

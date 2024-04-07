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
      backgroundColor: Colors.amber[100],
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
              height: MediaQuery.of(context).size.height / 1.2,
              width: MediaQuery.of(context).size.width / 1.2,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                crossAxisSpacing: 20,
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
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

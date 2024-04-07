import 'package:flutter/material.dart';
import 'package:sample_project/Kids%20Book/Numbers/numbers.dart';
import 'package:sample_project/Kids%20Book/Alphabet/aophabet.dart';
import 'package:sample_project/Kids%20Book/symbols/symbols.dart';

// ignore: camel_case_types
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1,
                // color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Alphabet Button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Alphabat(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.yellow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Alphabat",
                                style: TextStyle(
                                    fontSize: 36,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                'assets/alphabet.png',
                                height: 80,
                                width: 80,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Numeric button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const numberpage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.yellow)),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Numbers",
                                style: TextStyle(
                                    fontSize: 36,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                'assets/numbers.png',
                                height: 80,
                                width: 80,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Numerical Symbols
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const symbolspage(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.yellow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Symbols",
                                style: TextStyle(
                                    fontSize: 36,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.asset(
                                'assets/question-mark.png',
                                height: 80,
                                width: 80,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

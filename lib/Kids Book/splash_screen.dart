import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_project/Kids%20Book/home_screen.dart';

// ignore: camel_case_types
class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

// ignore: camel_case_types
class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    navigattohome();
  }

  navigattohome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => home_screen(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              height: 400,
              width: MediaQuery.of(context).size.width / 1.2,
              child: Image.asset("assets/Kids_Book.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text("Kids Book",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    color: Colors.black,
                  ))),
            )
          ],
        ),
      ),
    );
  }
}

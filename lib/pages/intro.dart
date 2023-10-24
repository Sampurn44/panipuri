import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panipuri/components/button.dart';
import 'package:panipuri/pages/menu.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 224, 51, 55),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 20),
            Text(
              "Puchka Express",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/usethis.png"),
            ),
            Text(
              "THE TASTE OF INDIAN STREETS",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 35, color: Colors.white),
            ),
            Text(
                "Popular Indian street food with crispy puris, spicy potato filling, tamarind chutney, and flavorful spiced water. A must-try!",
                style: TextStyle(color: Colors.grey[200], height: 2)),
            const SizedBox(
              height: 42,
            ),
            Allinone(
              text: "Enter the Golgappa world",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}

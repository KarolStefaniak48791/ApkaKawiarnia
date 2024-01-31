import 'package:brewhub/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(36, 0, 0, 1.0),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "CAFENEGRAR",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset('lib/images/logo.png')),
              const SizedBox(
                height: 25,
              ),
              Text(
                "NAJLEPSZA KAWA NA RYNKU",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Rozkoszuj się aromatycznym smakiem kawy na Wrocławskim rynku",
                style: TextStyle(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                text: "Sprawdz",
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ));
  }
}

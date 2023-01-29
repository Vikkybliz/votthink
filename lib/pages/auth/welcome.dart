import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vothink/pages/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 50),
          Text("Hi YourName!",
              style: GoogleFonts.inter(
                  color: const Color(
                    0xFFAA3333,
                  ),
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          const SizedBox(
            height: 20,
          ),
          Text("Wecome to VotThink!",
              style: GoogleFonts.inter(
                  color: const Color(
                    0xFFAA3333,
                  ),
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          const SizedBox(
            height: 20,
          ),
          Text("Your account has been successfully created",
              style: GoogleFonts.inter(fontSize: 15)),
          Opacity(
            opacity: 0.2,
            child: SvgPicture.asset(
              "assets/undraw_voting_nvu7.svg",
              height: MediaQuery.of(context).size.height / 2,
              width: 100,
              color: const Color.fromARGB(255, 187, 62, 62),
              // colorBlendMode: BlendMode.lighten,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                  width: MediaQuery.of(context).size.width, height: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // side: const BorderSide(width: 3, color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                    backgroundColor: const Color.fromARGB(255, 214, 37, 37),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text("Continue",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/vote/confirm.dart';

class About extends StatelessWidget {
  final String manifesto, bio, name, pic;
  const About({super.key, required this.manifesto, required this.bio, required this.name, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SHORT BIOGRAPHY',
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                bio,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'ELECTION MANIFESTO',
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                manifesto,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width, height: 50),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // side: const BorderSide(width: 3, color: Colors.white),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                        backgroundColor: const Color(0xffaa3333),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Confirm(pic: pic, name: name))));
                      },
                      child: const Text("Vote Now",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

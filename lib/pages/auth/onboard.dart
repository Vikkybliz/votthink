import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/auth/login.dart';
import 'package:vothink/pages/auth/signup.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/confetti-doodles.png",
                  ),
                  fit: BoxFit.cover)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Participate in University elections easily!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: MediaQuery.of(context).size.width, height: 50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Signup())));
                        },
                        child: const Text("Sign up",
                            style: TextStyle(
                                color: Color(0xFFAA3333), fontSize: 20))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: MediaQuery.of(context).size.width, height: 50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 3, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                          backgroundColor: const Color(0xFFAA3333),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Login())));
                        },
                        child: const Text("Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ]),
        ),
      ),
    );
  }
}

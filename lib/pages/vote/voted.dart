import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/home.dart';

class Voted extends StatelessWidget {
  const Voted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Thank You!',
              // textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                  color: const Color(0xffaa3333),
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your vote has submitted successfully',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xffaa3333),
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset(
                'assets/undraw_voting_nvu7.svg',
                height: 300,
                color: const Color(0xffaa3333),
                // colorBlendMode: BlendMode.,
              ),
            ),
            const Spacer(),
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
                      Get.offAll(const Home());
                    },
                    child: const Text("Back to Home",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

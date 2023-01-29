import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/model/candidates.dart';
import 'package:vothink/pages/vote/choose.dart';

class Ongoing extends StatelessWidget {
  const Ongoing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFFAA3333),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    spreadRadius: 5, //Ne
                    // offset: Offset(40, 40)
                  )
                ],
                // border: Border.all(),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Vote for',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Students Representative',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Jan. 28th - Feb. 14th,  8am - 3pm',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Students representatives are known as enrolled scholars at their institution elected to lobby for students\' rights and represent the point of view of their peers',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: candidates.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  width: 5, color: const Color(0xFFAA3333))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              candidates[index].picUrl,
                              width: 100,
                            ),
                          ),
                        ),
                        Text(candidates[index].name)
                      ],
                    ),
                  );
                })),
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
                    backgroundColor: const Color.fromARGB(255, 214, 37, 37),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Choose())));
                  },
                  child: const Text("Vote Now",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
        ],
      ),
    );
  }
}

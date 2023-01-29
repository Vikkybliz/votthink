import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/vote/confirm.dart';

class Contact extends StatelessWidget {
  final String name, pic;
  const Contact({super.key, required this.name, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SOCIAL NETWORK',
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffaa3333),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.facebookF),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffaa3333),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffaa3333),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xffaa3333),
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                )
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
                              builder: ((context) => Confirm(name: name, pic: pic))));
                    },
                    child: const Text("Vote Now",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

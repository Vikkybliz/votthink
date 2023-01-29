import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/vote/voted.dart';

class Confirm extends StatelessWidget {
  final String name, pic;
  const Confirm({super.key, required this.name, required this.pic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xffaa3333),
            )),
        backgroundColor: Colors.transparent,
        title: Text(
          'Vote for Students representative',
          style:
              GoogleFonts.inter(fontSize: 18, color: const Color(0xFFAA3333)),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'Are you sure you want to vote for this candidate? Once confirmed this action cannot be undone',
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 145, 60, 60),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 15.0,
                            spreadRadius: 5, //Ne
                            // offset: Offset(40, 40)
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                      top: 0,
                      // bottom: 50,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(110),
                            border: Border.all(
                                color: const Color.fromARGB(255, 145, 60, 60),
                                width: 3)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            pic,
                            height: 200,
                          ),
                        ),
                      ))
                ],
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Voted())));
                    },
                    child: const Text("Vote Now",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
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
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel",
                        style:
                            TextStyle(color: Color(0xffaa3333), fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/model/candidates.dart';
import 'package:vothink/pages/vote/confirm.dart';
import 'package:vothink/pages/vote/profile.dart';

class Choose extends StatelessWidget {
  const Choose({super.key});

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
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Text(
            'Choose your preferred candidate',
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: candidates.length,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 150, 68, 68),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 15.0,
                            spreadRadius: 3, //Ne
                            // offset: Offset(40, 40)
                          )
                        ],
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 5,
                                      color: const Color(0xFFAA3333))),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  candidates[index].picUrl,
                                  width: 60,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              candidates[index].name,
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // side: const BorderSide(width: 3, color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => ProfilePage(
                                              pic: candidates[index].picUrl,
                                              name: candidates[index].name,
                                              about: candidates[index].bio,
                                              manifesto: candidates[index]
                                                  .manifesto))));
                                },
                                child: const Text("View profile",
                                    style: TextStyle(
                                        color: Color(0xffaa3333),
                                        fontSize: 20))),
                            const SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // side: const BorderSide(width: 3, color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  // fixedSize: Size(MediaQuery.of(context).size.width, 20),
                                  backgroundColor:
                                      const Color.fromARGB(255, 214, 37, 37),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Confirm(
                                              name: candidates[index].name,
                                              pic: candidates[index].picUrl))));
                                },
                                child: const Text("Vote Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          ],
                        )
                      ],
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}

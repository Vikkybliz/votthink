import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vothink/pages/vote/candidate%20profile/about.dart';
import 'package:vothink/pages/vote/candidate%20profile/contact.dart';

class ProfilePage extends StatelessWidget {
  final String about, name, pic, manifesto;
  const ProfilePage(
      {Key? key,
      required this.about,
      required this.name,
      required this.pic,
      required this.manifesto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(350),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            flexibleSpace: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    pic,
                    // fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                  ),
                ),
                Text(
                  name,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),
            // title:
            centerTitle: true,
            bottom: const TabBar(
                labelColor: Color(0xFFAA3333),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                // indicatorPadding: EdgeInsets.all(20),
                padding: EdgeInsets.only(left: 10, right: 10),
                indicatorColor: Color(0xFFAA3333),
                tabs: [
                  Tab(
                    text: "About",
                  ),
                  Tab(
                    text: "Contacts",
                  )
                ]),
          ),
        ),
        body: TabBarView(children: [
          About(manifesto: manifesto, bio: about, pic: pic, name: name),
          Contact(pic: pic, name: name)
        ]),
      ),
    );
  }
}

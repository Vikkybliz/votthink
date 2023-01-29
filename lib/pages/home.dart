import "package:flutter/material.dart";
import 'package:vothink/pages/tabs/incoming.dart';
import 'package:vothink/pages/tabs/ongoing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Image.asset(
            "assets/logo.png",
            width: 100,
            color: const Color(0xFFAA3333),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            CircleAvatar(
              backgroundColor: const Color(0xFFAA3333),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline,
                    // color: Color(0xFFAA3333),
                  )),
            )
          ],
          bottom: const TabBar(
              labelColor: Color(0xFFAA3333),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // indicatorPadding: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 10, right: 10),
              indicatorColor: Color(0xFFAA3333),
              tabs: [
                Tab(
                  text: "Ongoing Elections",
                ),
                Tab(
                  text: "Upcoming Elections",
                )
              ]),
        ),
        body: const TabBarView(children: [Ongoing(), Incoming()]),
      ),
    );
  }
}

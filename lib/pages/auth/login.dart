import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFAA3333),
            )),
        backgroundColor: Colors.white,
        title: const Text(
          "Login",
          style: TextStyle(color: Color(0xFFAA3333)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const TextField(
                keyboardType: TextInputType.number,
                cursorColor: Color.fromARGB(255, 82, 82, 82),
                decoration: InputDecoration(
                  // labelText: "First name",
                  label: Text(
                    "Matric number",
                    style: TextStyle(color: Color.fromARGB(255, 82, 82, 82)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                ),
              ),
              const TextField(
                cursorColor: Color.fromARGB(255, 82, 82, 82),
                decoration: InputDecoration(
                  // labelText: "First name",
                  label: Text(
                    "Password",
                    style: TextStyle(color: Color.fromARGB(255, 82, 82, 82)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFAA3333)),
                  ),
                ),
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
                        backgroundColor: const Color.fromARGB(255, 214, 37, 37),
                      ),
                      onPressed: () {},
                      child: const Text("Login",
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

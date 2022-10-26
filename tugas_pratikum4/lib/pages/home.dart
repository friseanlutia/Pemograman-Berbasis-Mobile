import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'flower.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 227, 255),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              "FRIDAY FLOWER'S",
              style: GoogleFonts.alegreya(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(82, 119, 255, 1),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.asset(
                "assets/home.jpg",
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to My Garden!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 48, 138, 255),
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 100,
                    ),
                    child: Text(
                      "Find flowers that make you happy",
                      style: TextStyle(
                        color: Color.fromARGB(255, 111, 154, 210),
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Flower(),
                            ),
                          );
                        },
                        child: const Text(
                          "Let's Star",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_scanner,
                color: Color(0xFF454545),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_open_sharp,
                color: Color(0xFF454545),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
                color: Color(0xFF454545),
              ),
              label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Tutorial",
                        style: TextStyle(
                          color: Color(0xFFFF7530),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "How does AR system works?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 154, 104),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 450,
                height: 150,
                child: Image.asset(
                  "img/2.jpg",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Useful information",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF7530),
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7530),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Contacs",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7530),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Setting",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7530),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7530),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "F.A.Q",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Subscribe on our newsletter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF7530),
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 236, 227),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            size: 12,
                            color: Color(0xFFFF7530),
                          ),
                          Text(
                            "Enter email",
                            style: TextStyle(color: Color(0xFFFF7530)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7530),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Subscribe",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

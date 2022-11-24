import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 201, 180),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(180),
              child: Image.asset(
                "assets/1.jpg",
                width: 400,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "Frise Anesha Lutia",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "Ig : friseanlutia_",
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 20,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 16
          ),
          const Text(
            "Github : friseanlutia",
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              fontSize: 20,
              color: Color.fromARGB(224, 255, 255, 255)
            ),
          ),
          const SizedBox(
            height: 20
          ),
          const Text("Nama saya Frise Anesha Lutia, saya mahasiswi Universitas Singaperbangsa Karawang, Fakultas Ilmu Komputer, Jurusan Teknik Informatika. Saya masuk ke UNSIKA tahun 2020, sekarang saya sudah semester 5",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22, 
              color: Color.fromARGB(255, 255, 255, 255)
            ),
          ),        
        ],      
      ),
    );
  }
}

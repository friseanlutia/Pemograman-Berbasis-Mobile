import 'package:flutter/material.dart';
import 'package:tugas_pratikum4_pbm/pages/flower_mode.dart';

class FlowerDetail extends StatelessWidget {
  final Flower flower;

  const FlowerDetail({super.key, required this.flower});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 227, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                flower.gambar,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            flower.title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromRGBO(82, 119, 255, 1)),
          ),
          Text(
            'Rating : ${flower.rating}',
            style: const TextStyle(
                fontSize: 12, color: Color.fromARGB(255, 131, 158, 255)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(flower.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 16, 74))),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }
}

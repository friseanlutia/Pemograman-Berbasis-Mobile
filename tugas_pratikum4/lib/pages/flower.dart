import 'package:flutter/material.dart';
import 'package:tugas_pratikum4_pbm/pages/flower_mode.dart';
import 'flower_detail.dart';

class Flower extends StatefulWidget {
  const Flower({super.key});

  @override
  State<Flower> createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Types of Flowers"),
      ),
      backgroundColor: const Color.fromARGB(255, 219, 227, 255),
      body: SafeArea(
        child: ListView.builder(
          itemCount: listFlower.length,
          itemBuilder: (context, index) {
            final item = listFlower[index];
            return ListTile(
              leading: Image.asset(item.gambar),
              title: Text(item.title),
              trailing: Text("${item.rating}"),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FlowerDetail(flower: item),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

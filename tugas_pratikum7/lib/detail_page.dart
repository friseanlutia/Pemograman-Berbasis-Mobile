import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum7/db_provider.dart';
import 'package:tugas_pratikum7/pegawai.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.pegawai});

  final Pegawai pegawai;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAIL"),
        leading: Icon(Icons.book),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    widget.pegawai.nama,
                    style: const TextStyle(
                        fontSize: 44, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    widget.pegawai.email,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w300),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    widget.pegawai.alamat,
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w300),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    widget.pegawai.nohp,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w300),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

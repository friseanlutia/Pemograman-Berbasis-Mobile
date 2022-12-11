import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum7/db_provider.dart';
import 'package:tugas_pratikum7/pegawai.dart';

class FormPage extends StatefulWidget {
  final Pegawai? pegawai;

  const FormPage({Key? key, this.pegawai}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INSERT PEGAWAI"),
        leading: Icon(Icons.insert_drive_file),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                size: 20,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    label: const Text('Nama'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    label: const Text('Email'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _alamatController,
                  decoration: InputDecoration(
                    label: const Text('Alamat'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _nohpController,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    label: const Text('No HP'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Color.fromARGB(255, 232, 155, 255)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: FloatingActionButton.extended(
                    onPressed: () async {
                      final pegawai = Pegawai(
                          nama: _namaController.text,
                          email: _emailController.text,
                          alamat: _alamatController.text,
                          nohp: _nohpController.text);
                      Provider.of<DbProvider>(context, listen: false)
                          .addPegawais(pegawai);
                      Navigator.pop(context);
                    },
                    label: const Text("Simpan"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ]),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum7/db_provider.dart';
import 'package:tugas_pratikum7/pegawai.dart';

class UpdatePage extends StatefulWidget {
  final Pegawai? pegawai;

  const UpdatePage({Key? key, this.pegawai}) : super(key: key);

  @override
  State<UpdatePage> createState() => _FormPageState();
}

class _FormPageState extends State<UpdatePage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(widget.pegawai!.id);
    _namaController.text = widget.pegawai!.nama;
    _emailController.text = widget.pegawai!.email;
    _alamatController.text = widget.pegawai!.alamat;
    _nohpController.text = widget.pegawai!.nohp;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EDIT"),
        leading: Icon(Icons.edit_note),
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
                    width: 150,
                    height: 40,
                    child: FloatingActionButton.extended(
                      onPressed: () async {
                        final pegawai = Pegawai(
                            id: widget.pegawai!.id!,
                            nama: _namaController.text,
                            email: _emailController.text,
                            alamat: _alamatController.text,
                            nohp: _nohpController.text);
                        Provider.of<DbProvider>(context, listen: false)
                            .updatePegawais(pegawai);
                        Navigator.pop(context);
                      },
                      label: const Text("Simpan Perubahan"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ))
              ]),
        ),
      )),
    );
  }
}

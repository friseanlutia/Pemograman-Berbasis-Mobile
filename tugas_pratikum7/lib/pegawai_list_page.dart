import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum7/db_provider.dart';
import 'package:tugas_pratikum7/detail_page.dart';
import 'package:tugas_pratikum7/form.dart';
import 'package:tugas_pratikum7/form_update.dart';

class PegawaiListPage extends StatefulWidget {
  const PegawaiListPage({super.key});

  @override
  State<PegawaiListPage> createState() => _PegawaiListPageState();
}

class _PegawaiListPageState extends State<PegawaiListPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("PEGAWAI"),
        leading: Icon(Icons.home),
        automaticallyImplyLeading: false,
      ),
      body: Consumer<DbProvider>(
        builder: (context, provider, child) {
          final pegawais = provider.pegawais;
          return ListView.builder(
            itemCount: pegawais.length,
            itemBuilder: (context, index) {
              final pegawai = pegawais[index];
              return Dismissible(
                key: Key(pegawai.id.toString()),
                onDismissed: (direction) {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 3),
                  child: Card(
                    child: ListTile(
                      title: Text(pegawai.nama),
                      subtitle: Text(pegawai.alamat),
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(pegawai: pegawai),
                            ));
                      },
                      trailing: Wrap(children: <Widget>[
                        IconButton(
                          color: Color.fromARGB(255, 172, 117, 182),
                          onPressed: () async {
                            Provider.of<DbProvider>(context, listen: false)
                                .deletePegawais(pegawai.id!);
                          },
                          icon: const Icon(Icons.delete_outline),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 172, 117, 182),
                          onPressed: () async {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return UpdatePage(pegawai: pegawai);
                            }));
                          },
                          icon: const Icon(Icons.edit_outlined),
                        ),
                        IconButton(
                          color: Color.fromARGB(255, 172, 117, 182),
                          onPressed: () async {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage(pegawai: pegawai);
                            }));
                          },
                          icon: const Icon(Icons.book),
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('INSERT'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FormPage(),
              ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

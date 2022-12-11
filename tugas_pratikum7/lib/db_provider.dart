import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas_pratikum7/database_helper.dart';
import 'package:tugas_pratikum7/pegawai.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = ThemeData.dark().copyWith();
  ThemeProvider() {}

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}

class DbProvider extends ChangeNotifier {
  late DatabaseHelper _dbHelper;

  List<Pegawai> _pegawais = [];

  List<Pegawai> get pegawais => _pegawais;

  DbProvider() {
    _dbHelper = DatabaseHelper();
    _getAllPegawais();
  }

  void _getAllPegawais() async {
    _pegawais = await _dbHelper.getPegawais();
    notifyListeners();
  }

  Future<void> addPegawais(Pegawai pegawai) async {
    await _dbHelper.insertPegawai(pegawai);
    _getAllPegawais();
  }

  Future<void> deletePegawais(int id) async {
    await _dbHelper.deletePegawai(id);
    _getAllPegawais();
  }

  Future<void> updatePegawais(Pegawai pegawai) async {
    await _dbHelper.updatePegawai(pegawai);
    _getAllPegawais();
  }
}

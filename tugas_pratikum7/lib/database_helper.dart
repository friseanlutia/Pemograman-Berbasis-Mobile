import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas_pratikum7/pegawai.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  // ignore: unused_field
  static late Database _database;

  Future<Database> get database async {
    return _database = await _initializeDb();
  }

  static const String _tableName = 'pegawais';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'pegawai_db.db'),
      onCreate: (db, version) async {
        await db.execute(
            '''CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, nama TEXT, email TEXT, alamat TEXT, nohp TEXT)''');
      },
      version: 1,
    );
    return db;
  }

  Future<void> insertPegawai(Pegawai pegawai) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      pegawai.toMap(),
    );
  }

  Future<List<Pegawai>> getPegawais() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);

    return result.map((res) => Pegawai.fromMap(res)).toList();
  }

  Future<int> deletePegawai(int id) async {
    final Database db = await database;
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updatePegawai(Pegawai pegawai) async {
    final Database db = await database;
    return await db.update(_tableName, pegawai.toMap(),
        where: 'id = ?', whereArgs: [pegawai.id]);
  }
}
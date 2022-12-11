class Pegawai {
  late int? id;
  late String nama;
  late String email;
  late String alamat;
  late String nohp;

  Pegawai({
    this.id,
    required this.nama,
    required this.email,
    required this.alamat,
    required this.nohp,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'email': email,
      'alamat': alamat,
      'nohp': nohp,
    };
  }

  Pegawai.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    nama = map['nama'];
    email = map['email'];
    alamat = map['alamat'];
    nohp = map['nohp'];
  }
}
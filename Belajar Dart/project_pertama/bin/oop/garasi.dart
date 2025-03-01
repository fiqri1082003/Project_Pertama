import 'kendaraan.dart';

class Garasi {
  List<Kendaraan> daftarKendaraan = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
    print('Menambahkan kendaraan ke garasi...');
  }

  void tampilkanKendaraan() {
    print('Daftar Kendaraan di Garasi:');
    for (var kendaraan in daftarKendaraan) {
      print('- ${kendaraan.info()}');
    }
  }

  void servisSemuaKendaraan() {
    print('Melakukan servis untuk semua kendaraan...');
    for (var kendaraan in daftarKendaraan) {
      kendaraan.servis();
    }
  }
}

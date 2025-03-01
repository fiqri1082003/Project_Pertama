import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;

  Mobil(String nama, int tahun, this.jumlahPintu) : super(nama, tahun);

  @override
  void servis() {
    print('Servis mobil $nama dilakukan');
  }

  @override
  String info() {
    return 'Mobil: $nama ($tahun) - $jumlahPintu Pintu';
  }
}

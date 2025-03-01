import 'kendaraan.dart';

class Motor extends Kendaraan {
  String tipeKeranjang;

  Motor(String nama, int tahun, this.tipeKeranjang) : super(nama, tahun);

  @override
  void servis() {
    print('Servis motor $nama dilakukan');
  }

  @override
  String info() {
    return 'Motor: $nama ($tahun) - $tipeKeranjang';
  }
}

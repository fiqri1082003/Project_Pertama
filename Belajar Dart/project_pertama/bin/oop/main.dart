import 'garasi.dart';
import 'mobil.dart';
import 'motor.dart';

void main() {
  Garasi garasi = Garasi();

  // Menambahkan kendaraan
  Mobil mobil1 = Mobil('Toyota Camry', 2022, 4);
  Motor motor1 = Motor('Yamaha R15', 2020, 'Tanpa Keranjang');

  garasi.tambahKendaraan(mobil1);
  garasi.tambahKendaraan(motor1);

  // Menampilkan daftar kendaraan
  garasi.tampilkanKendaraan();

  // Melakukan servis untuk semua kendaraan
  garasi.servisSemuaKendaraan();
}

import 'dart:io';

void main() {
  // Meminta input nama siswa
  stdout.write("Masukan nama: ");
  String? nama = stdin.readLineSync();

  // Meminta input nilai siswa
  stdout.write("Masukan nilai (0-100): ");
  String? inputNilai = stdin.readLineSync();
  
  // Mengonversi input nilai menjadi integer
  int nilai = int.parse(inputNilai ?? '0');

  // Pengecekan menggunakan if-else
  String kategoriIfElse;
  if (nilai >= 90) {
    kategoriIfElse = "A - Sangat Baik";
  } else if (nilai >= 80) {
    kategoriIfElse = "B - Baik";
  } else if (nilai >= 70) {
    kategoriIfElse = "C - Cukup";
  } else if (nilai >= 60) {
    kategoriIfElse = "D - Kurang";
  } else {
    kategoriIfElse = "E - Gagal";
  }

  // Pengecekan menggunakan switch case
  String kategoriSwitch;
  switch (nilai ~/ 10) { // Pembagian integer untuk mendapatkan range
    case 10:
    case 9:
      kategoriSwitch = "A";
      break;
    case 8:
      kategoriSwitch = "B";
      break;
    case 7:
      kategoriSwitch = "C";
      break;
    case 6:
      kategoriSwitch = "D";
      break;
    default:
      kategoriSwitch = "E";
      break;
  }

  // Menampilkan hasil
  print("\nNama: $nama");
  print("Nilai: $nilai");
  
  // Menampilkan hasil dari if-else
  print("Kategori (if-else): $kategoriIfElse");
  
  // Menampilkan hasil dari switch case
  print("Kategori (switch case): $kategoriSwitch");
}

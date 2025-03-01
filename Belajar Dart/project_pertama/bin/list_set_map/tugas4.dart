import 'dart:io';

class Pegawai {
  int id;
  String nama;
  double gaji;
  String jabatan;

  Pegawai(this.id, this.nama, this.gaji, this.jabatan);
}

void main() {
  // Menerima input jumlah pegawai dari pengguna
  stdout.write("Masukkan jumlah pegawai: ");
  int jumlahPegawai = int.parse(stdin.readLineSync()!);
  
  List<Pegawai> daftarPegawai = [];

  // Menggunakan perulangan untuk memasukkan data pegawai
  for (int i = 0; i < jumlahPegawai; i++) {
    stdout.write("Masukkan nama pegawai ke-${i + 1}: ");
    String nama = stdin.readLineSync()!;
    
    stdout.write("Masukkan gaji pegawai ke-${i + 1}: ");
    double gaji = double.parse(stdin.readLineSync()!);
    
    stdout.write("Masukkan jabatan pegawai ke-${i + 1}: ");
    String jabatan = stdin.readLineSync()!;
    
    daftarPegawai.add(Pegawai(i + 1, nama, gaji, jabatan));
  }

  // Menampilkan nomor pegawai secara berurutan
  print("\nDaftar Nomor Pegawai:");
  for (var pegawai in daftarPegawai) {
    print("Pegawai ID: ${pegawai.id}");
  }

  // Menampilkan daftar pegawai dengan ID genap dan ganjil
  print("\nDaftar Pegawai dengan ID Genap:");
  for (var pegawai in daftarPegawai) {
    if (pegawai.id % 2 == 0) {
      print("ID: ${pegawai.id}, Nama: ${pegawai.nama}");
    }
  }

  print("\nDaftar Pegawai dengan ID Ganjil:");
  for (var pegawai in daftarPegawai) {
    if (pegawai.id % 2 != 0) {
      print("ID: ${pegawai.id}, Nama: ${pegawai.nama}");
    }
  }

  // Menggunakan for-in dan foreach untuk mencetak data pegawai
  print("\nData Pegawai:");
  for (var pegawai in daftarPegawai) {
    print("ID: ${pegawai.id}, Nama: ${pegawai.nama}, Gaji: ${pegawai.gaji}, Jabatan: ${pegawai.jabatan}");
  }

  // Menghitung total gaji pegawai
  double totalGaji(List<Pegawai> pegawais) {
    double total = 0;
    for (var pegawai in pegawais) {
      total += pegawai.gaji;
    }
    return total;
  }

  print("\nTotal Gaji Pegawai: ${totalGaji(daftarPegawai)}");

  // Fungsi dengan default parameter untuk menentukan tunjangan berdasarkan jabatan
  double tunjangan(String jabatan, [double persentase = 0.1]) {
    switch (jabatan.toLowerCase()) {
      case 'manager':
        return persentase * 2000000; // Tunjangan khusus untuk manager
      case 'staff':
        return persentase * 1000000; // Tunjangan khusus untuk staff
      default:
        return persentase * 500000; // Tunjangan default
    }
  }

  // Menampilkan tunjangan setiap pegawai
  print("\nTunjangan Pegawai:");
  for (var pegawai in daftarPegawai) {
    print("${pegawai.nama} mendapatkan tunjangan: ${tunjangan(pegawai.jabatan)}");
  }

  // Fungsi rekursif untuk menghitung bonus tahunan berdasarkan tahun kerja
  double bonusTahunan(int tahunKerja) {
    if (tahunKerja <= 0) return 0;
    return (tahunKerja * 100000); // Bonus per tahun kerja
      return bonusTahunan(tahunKerja -1);
    
}

print("\nBonus Tahunan Pegawai:");
for (var pegawai in daftarPegawai) {
print("${pegawai.nama} mendapatkan bonus tahunan: ${bonusTahunan(3)}"); // Misalkan semua sudah bekerja selama tiga tahun.
}

// Menggunakan arrow function untuk menghitung gaji bersih setelah pajak
double gajiBersih(double gaji, [double pajak = 0.1]) => gaji - (gaji * pajak);

print("\nGaji Bersih Setelah Pajak:");
for (var pegawai in daftarPegawai) {
print("${pegawai.nama} memiliki gaji bersih: ${gajiBersih(pegawai.gaji)}");
}
}

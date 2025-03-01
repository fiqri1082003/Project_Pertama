void main() {
  // Buat List Object
  Set<String> matkul = {
    "DDP",
    "Desain Grafis",
    "Digital Marketing",
    "Mobile App Developer",
    "Pemograman Sistem"
  };

  var Nama = List<String>.filled(5, "", growable: false);
  
  // Menggabungkan semua data mahasiswa dalam satu Map
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Nurul': {'Nim': '0110122037', 'Mata Kuliah': ['Dasar Dasar Pemogran']},
    'Fiqri': {'Nim': '0110122084', 'Mata Kuliah': ['Desain Grafis']},
    'Ramdhani': {'Nim': '0110122041', 'Mata Kuliah': ['Digital Marketing']},
    'Dinda': {'Nim': '0110122090', 'Mata Kuliah': ['Mobile App Developer']},
    'Almanda': {'Nim': '0110122012', 'Mata Kuliah': ['Pemograman Sistem']},
  };

  // Mengisi Data
  Nama[0] = "Nurul";
  Nama[1] = "Fiqri";
  Nama[2] = "Ramdhani";
  Nama[3] = "Dinda";
  // Nama[4] = "Almanda";

  // Menampilkan daftar nama
  for (var i = 0; i < Nama.length; i++) {
    print("Daftar Nama ${Nama[i]}");
  }
  
  print(""); // Menambahkan baris kosong

  // Menampilkan informasi mahasiswa
  for (var nama in Nama) {
    print('Nama: $nama');
    print('NIM: ${dataMahasiswa[nama]?['Nim']}');
    print('Mata Kuliah: ${dataMahasiswa[nama]?['Mata Kuliah']}\n');
  }
}

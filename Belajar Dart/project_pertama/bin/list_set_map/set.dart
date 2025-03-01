void main() {
  // Buat List Object
  Set<String> matkul = {"DDP", "Desain Grafis", "Digital Marketing", "Mobile App Developer", "Matematika"};
  var Nama = List<String>.filled(5, "", growable: false);
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    'Nurul': {'Nim': '0110122037', 'Mata Kuliah': ['Dasar Dasar Pemogran']},
    'Fiqri': {'Nim': '0110122084', 'Mata Kuliah': ['Desain Grafis']},
    'Ramdhani':{'Nim':'0110122041','Mata Kuliah':['Digital Marketing']},
    'Dinda':{'Nim':'0110122090','Mata Kuliah':['Mobile App Developer']},
    'Thami':{'Nim':'0110122058','Mata Kuliah':['Matematika']},
    };

  //Mengisi Data
  Nama[0] = "Nurul";
  Nama[1] = "Fiqri";
  Nama[2] = "Ramdhani";
  Nama[3] = "Dinda";
  Nama[4] = "Thami";

  print("Daftar Nama ${Nama[0]}");
  print("Daftar Nama ${Nama[1]}");
  print("Daftar Nama ${Nama[2]}");
  print("Daftar Nama ${Nama[3]}");
  print("Daftar Nama ${Nama[4]}\n");

  print('Nama: Nurul');
  print('NIM: ${dataMahasiswa['Nurul']?['Nim']}');
  print('Mata Kuliah: ${dataMahasiswa['Nurul']?['Mata Kuliah']}\n');

  print('Nama: Fiqri');
  print('NIM: ${dataMahasiswa['Fiqri']?['Nim']}');
  print('Mata Kuliah: ${dataMahasiswa['Fiqri']?['Mata Kuliah']}\n');

  print('Nama: Ramdhani');
  print('NIM: ${dataMahasiswa['Ramdhani']?['Nim']}');
  print('Mata Kuliah: ${dataMahasiswa['Ramdhani']?['Mata Kuliah']}\n');

  print('Nama: Dinda');
  print('NIM: ${dataMahasiswa['Dinda']?['Nim']}');
  print('Mata Kuliah: ${dataMahasiswa['Dinda']?['Mata Kuliah']}\n');

  print('Nama: Thami');
  print('NIM: ${dataMahasiswa['Thami']?['Nim']}');
  print('Mata Kuliah: ${dataMahasiswa['Thami']?['Mata Kuliah']}\n');
}
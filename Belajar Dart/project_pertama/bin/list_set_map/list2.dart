void main(List<String> arguments){
  var daftarNama = List<String>.filled(5, "", growable: false);

  //Mengisi Data
  daftarNama[0] = "Nurul";
  daftarNama[1] = "Fiqri";
  daftarNama[2] = "Ramdhani";
  daftarNama[3] = "Dinda";
  daftarNama[4] = "Almanda";

  print("Daftar Nama $daftarNama");
}
import 'user.dart';

class Pegawai extends User{
  int gaji_dasar=0;
  int total_penghasilan =0;
  int gaji_tunjangan=0;

  Pegawai(String? nama, int umur) : super(nama, umur);

  set Gaji_Dasar(int x){
    gaji_dasar=x;
  }
  set Total_Penghasilan(int x){
    total_penghasilan=x;
  }
  set Gaji_Tunjangan(int x){
    gaji_tunjangan=x;
  }

  int get Gaji_Dasar{
    return gaji_dasar;
  }
  int get Total_Penghasilan{
    return total_penghasilan;
  }
  int get Gaji_Tunjangan{
    return gaji_tunjangan;
  }
}
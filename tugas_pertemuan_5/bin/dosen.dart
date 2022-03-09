import 'pegawai.dart';

class Dosen extends Pegawai{
  int bonus_gaji_sks=0;
  int jumlah_sks=0;

  Dosen(String? nama, int umur) : super(nama, umur);

  set Bonus_Gaji_Sks(int x){
    bonus_gaji_sks=x;
  }
  set Jumlah_Sks(int x){
    jumlah_sks=x;
  }

  int get Bonus_Gaji_Sks{
    return bonus_gaji_sks;
  }
  int get Jumlah_Sks{
    return jumlah_sks;
  }
}
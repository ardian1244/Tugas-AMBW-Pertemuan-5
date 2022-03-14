import 'pegawai.dart';

class Dosen extends Pegawai{
  int bonus_gaji_sks=40000;
  int jumlah_sks=0;

  Dosen(String? nama, int umur, int dasar, int tot, int tunj, int sks) : super(nama, umur, dasar, tot, tunj){
    this.jumlah_sks=sks;
  }
  
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
  int get GetPenghasilan{
    total_penghasilan=gaji_dasar+gaji_tunjangan+(jumlah_sks*bonus_gaji_sks);
    return total_penghasilan;
  }
}
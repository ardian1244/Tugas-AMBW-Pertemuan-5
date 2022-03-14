import 'user.dart';

class Pegawai extends User{
  int gaji_dasar=0;
  int total_penghasilan =0;
  int gaji_tunjangan=0;

  Pegawai(String? nama, int umur, int dasar, int tot, int tunj) : super(nama, umur){
    this.gaji_dasar=dasar;
    this.total_penghasilan=tot;
    this.gaji_tunjangan=tunj;
  }

  set Gaji_Dasar(int x){
    gaji_dasar=x;
  }
  set Gaji_Tunjangan(int x){
    gaji_tunjangan=x;
  }

  int get Gaji_Dasar{
    return gaji_dasar;
  }
  int get Gaji_Tunjangan{
    return gaji_tunjangan;
  }
}
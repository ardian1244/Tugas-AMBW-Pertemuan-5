import 'pegawai.dart';
import 'user.dart';

class Staff extends Pegawai{
  int plus_tunjangan=10000;
  int sisa_cuti=12;
  int stat_absen=0;

  Staff(String? nama, int umur, int dasar, int tot, int tunj) : super(nama, umur, dasar, tot, tunj);

  set Plus_Tunjangan(int x){
    plus_tunjangan=x;
  }
  set Sisa_Cuti(int x){
    sisa_cuti-=x;
  }
  set Stat_Absen(int x){
    stat_absen=x;
  }

  addabsen(){
    stat_absen+=1;
    print("Absen berhasil");
  }

  int get Sisa_cuti{
    return sisa_cuti;
  }
  int get Stat_Absen{
    return stat_absen;
  }
  int get GetStaffPenghasilan{
    total_penghasilan=gaji_dasar+(stat_absen*plus_tunjangan);
    return total_penghasilan;
  }
}
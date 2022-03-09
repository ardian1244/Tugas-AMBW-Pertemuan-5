import 'user.dart';

class Staff extends User{
  int plus_tunjangan=0;
  int sisa_cuti=12;
  String stat_absen="0";

  Staff(String? nama, int umur) : super(nama, umur);

  set Plus_Tunjangan(int x){
    plus_tunjangan=x;
  }
  set Sisa_Cuti(int x){
    sisa_cuti=x;
  }
  set Stat_Absen(String x){
    stat_absen=x;
  }

  int get Plus_Tunjangan{
    return plus_tunjangan;
  }
  int get Sisa_cuti{
    return sisa_cuti;
  }
  String get Stat_Absen{
    return stat_absen;
  }
}
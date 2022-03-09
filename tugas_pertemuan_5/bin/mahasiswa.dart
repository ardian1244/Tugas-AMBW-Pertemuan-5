import 'user.dart';

class Mahasiswa extends User{
  int sks = 0;
  String status = "aktif";
  int ips =0;
  int ipk=0;

  Mahasiswa(String? nama, int umur) : super(nama, umur);

  set Sks(int x){
    sks=x;
  }
  set Status(String x){
    status=x;
  }
  set Ips(int x){
    ips=x;
  }
  set Ipk(int x){
    ipk=x;
  }


  int get Sks{
    return sks;
  }
  String get Status{
    return status;
  }
  int get Ips{
    return ips;
  }
  int get Ipk{
    return ipk;
  }
}
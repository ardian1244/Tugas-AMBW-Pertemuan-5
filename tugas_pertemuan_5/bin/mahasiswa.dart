import 'user.dart';

class Mahasiswa extends User{
  String nrp="";
  int sks = 0;
  String status = "aktif";
  double ips =0;
  double ipk=0;

  Mahasiswa(String? nama, int umur, int _sks, String stat, double _ips, double _ipk, String _nrp) : super(nama, umur){
    this.sks=_sks;
    this.status=stat;
    this.ips=_ips;
    this.ipk=_ipk;
    this.nrp=_nrp;
  }

  set Sks(int x){
    sks=x;
  }
  set Status(String x){
    status=x;
  }
  set Ips(double x){
    ips=x;
  }
  set Ipk(double x){
    ipk=x;
  }


  int get Sks{
    return sks;
  }
  String get Status{
    return status;
  }
  double get Ips{
    return ips;
  }
  double get Ipk{
    return ipk;
  }
}
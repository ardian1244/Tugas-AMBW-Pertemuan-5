import 'mahasiswa.dart';
import 'staff.dart';
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  Mahasiswa mhs1 = Mahasiswa("ardian", 20, 22, "aktif", 0, 0,"C14190018");
  Staff staff1 = Staff("david", 21);

  int menu=1,submenu=1;

  while(menu!=0){
    stdout.write("1. Mahasiswa\n");
    stdout.write("2. Dosen Tetap\n");
    stdout.write("3. Dosen LB\n");
    stdout.write("4. Dosen Tamu\n");
    stdout.write("5. Staff\n");
    stdout.write("0. Exit\n");
    stdout.write("Pilih Data : ");
    String? inp = stdin.readLineSync();
    int input = int.parse(inp!);

    switch (input){
      case 0:
        menu=0;
        break;
      case 1:
        while(submenu!=0){
          print("Nama : ${mhs1.nama}\nUmur : ${mhs1.umur}\nNRP : ${mhs1.nrp}\n");
          print("1. Atur SKS");
          print("2. Status Perkuliahan");
          print("3. Cek Jumlah SKS");
          print("4. Input IPS");
          print("5. Cek IPK");
          print("0. Back to Menu");
          stdout.write("Pilih Data : ");
          String? xx = stdin.readLineSync();
          int x = int.parse(xx!);

          if(x==1){
            print("Input SKS : ");
            String? xsks = stdin.readLineSync();
            int n = int.parse(xsks!);
            mhs1.Sks = n;
          }
          else if(x==2){
            print("Status : ${mhs1.status}\n");
            print("Ganti Status : Aktif(Y) / Cuti(N)");
            String? xstat = stdin.readLineSync();
            if(xstat == "y"){
              mhs1.Status="Aktif";
            }
            else if(xstat == "n"){
              mhs1.Status="Cuti";
            }
          }
          else if(x==3){
            print("Jumlah SKS : ${mhs1.sks}\n");
          }
          else if(x==4){
            stdout.write("Input IPS : ");
            String? xips = stdin.readLineSync();
            double n = double.parse(xips!);
            mhs1.Ips=n;
          }
          else if(x==5){
            print("IPK : ${mhs1.ipk}\n");
          }
          else if(x==0){
            print("\n");
            break;
          }
        }
    }
  }
}

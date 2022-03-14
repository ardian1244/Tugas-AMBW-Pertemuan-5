import 'dosenLB.dart';
import 'dosenTamu.dart';
import 'dosenTetap.dart';
import 'mahasiswa.dart';
import 'staff.dart';
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  Mahasiswa mhs1 = Mahasiswa("ardian", 20, 22, "aktif", 0, 0,"C14190018");
  Staff staff1 = Staff("staff", 22, 1000000, 0, 0);
  DosenTetap dosentetap1 = DosenTetap("tetap", 29, 4750000, 0, 15000, 11);
  DosenLB dosenlb1 = DosenLB("lb", 29, 1500000, 0, 0, 10);
  DosenTamu dosentamu1 = DosenTamu("tamu", 31, 0, 0, 150000, 10);
  

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

    if(input==0){
      menu=0;
    }
    else if(input==1){
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
            print("Input SKS 2-24 : ");
            String? xsks = stdin.readLineSync();
            int n = int.parse(xsks!);
            if (n<2){
              print("Minimal SKS yang diambil adalah 2");
            }
            else if(n>24){
              print("Maximal SKS yang diambil adalah 24");
            }
            else if(x >=2 && x <=24){
              mhs1.Sks = n;
            }
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
            print("0000\n");
            submenu=1;
            break;
          }
        }
    }
    else if(input==2){
      while(submenu!=0){
        print("Dosen Tetap");
        print("Nama : ${dosentetap1.nama}, Umur : ${dosentetap1.umur}");
        print("1. Cek jumlah SKS yang diampu");
        print("2. Lihat total penghasilan");
        print("0. Back to Menu");
        stdout.write("Pilih Data : ");
        String? xx = stdin.readLineSync();
        int x = int.parse(xx!);

        if(x==0){
          print("\n");
          submenu=0;
        }
        else if(x==1){
          print("Jumlah SKS : ${dosentetap1.Jumlah_Sks} SKS");
        }
        else if(x==2){
          print("Total Penghasilan : ${dosentetap1.GetPenghasilan}");
        }
      }
    }
    else if(input==3){
      while(submenu!=0){
        print("Dosen LB");
        print("Nama : ${dosenlb1.nama}, Umur : ${dosenlb1.umur}");
        print("1. Cek jumlah SKS yang diampu");
        print("2. Lihat total penghasilan");
        print("0. Back to Menu");
        stdout.write("Pilih Data : ");
        String? xx = stdin.readLineSync();
        int x = int.parse(xx!);

        if(x==0){
          print("\n");
          submenu=0;
        }
        else if(x==1){
          print("Jumlah SKS : ${dosenlb1.Jumlah_Sks} SKS");
        }
        else if(x==2){
          print("Total Penghasilan : ${dosenlb1.GetPenghasilan}");
        }
      }
    }
    else if(input==4){
      while(submenu!=0){
        print("Dosen Tamu");
        print("Nama : ${dosentamu1.nama}, Umur : ${dosentamu1.umur}");
        print("1. Cek jumlah SKS yang diampu");
        print("2. Lihat total penghasilan");
        print("0. Back to Menu");
        stdout.write("Pilih Data : ");
        String? xx = stdin.readLineSync();
        int x = int.parse(xx!);

        if(x==0){
          print("\n");
          submenu=0;
        }
        else if(x==1){
          print("Jumlah SKS : ${dosentamu1.Jumlah_Sks} SKS");
        }
        else if(x==2){
          print("Total Penghasilan : ${dosentamu1.GetPenghasilan}");
        }
      }
    }
    else if(input==5){
      while(submenu!=0){
        print("Staff");
        print("Nama : ${staff1.nama}, Umur : ${staff1.umur}");
        print("1. Absen");
        print("2. Pengajuan Cuti");
        print("3. Lihat total penghasilan");
        print("0. Back to Menu");
        stdout.write("Pilih Data : ");
        String? xx = stdin.readLineSync();
        int x = int.parse(xx!);

        if(x==0){
          print("\n");
          submenu=0;
        }
        else if(x==1){
          staff1.addabsen();
        }
        else if(x==2){
          stdout.write("Berapa lama? : ");
          String? input = stdin.readLineSync();
          int inp = int.parse(input!);

          if(inp>staff1.Sisa_cuti){
            print("Jatah cuti tidak mencukupi");
          }
          else{
            staff1.Sisa_Cuti=inp;
            print("Sisa Cuti : ${staff1.Sisa_cuti}");
          }
        }
        else if(x==3){
          print("Total Penghasilan : ${staff1.GetStaffPenghasilan}");
        }
      }
    }
  }
}

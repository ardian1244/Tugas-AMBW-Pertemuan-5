import 'staff.dart';

void main(List<String> arguments) {
  Staff staff1 = Staff("david", 21);

  staff1.Stat_Absen="1";

  print(staff1.nama);
  print(staff1.umur);
  print(staff1.Plus_Tunjangan);
  print(staff1.sisa_cuti);
  print(staff1.stat_absen);
}

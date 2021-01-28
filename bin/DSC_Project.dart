import 'dart:io';
import 'Operations.dart';
import 'Trips.dart';
import 'package:DSC_Project/DSC_Project.dart' as DSC_Project;
void main() {
  for(int i=0;i<10;i++){
  //اول حاجة اليوزر هيختار رقم العملية اللي عايزها
print('Choose the operation:\n'
'1) Add\n'
'2) Edit\n'
'3) Delete\n'
'4) View\n'
'5) Search\n'
'6) Reserve\n'
'7) Discount\n'
'8) Latest trips\n'
'9) view passengers');
//هيدخل رقم العملية
int op =int.parse(stdin.readLineSync());
Operations Operation=new Operations();
switch(op)
{
  case 1 :Operation.add_trip();break;
  case 2 :Operation.edit_trip();break;
  case 3 :Operation.delete_trip();break;
  case 4 :Operation.view_trips();break;
  case 5 :Operation.search_trip();break;
  case 6 :Operation.reserve_trip();break;
  case 7 :Operation.discount_trip();break;
  case 8 :Operation.latest_trips();break;
  case 9 :Operation.view_passengers();break;
}
//لو عايز يعمل عملية تانية
print('another operation?\n1) yes\n2) no');
int choose=int.parse(stdin.readLineSync());
if(choose==2){
  print('thank you for using our service');
  break;}
}}

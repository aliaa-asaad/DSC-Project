import 'dart:io';
import 'Trips.dart';

class Operations{

  void add_trip(){
    //اول حاجة بستقبل منه بيانات الرحلة زي الاي دي والمكان
    // واقصي عدد وعدد اللي حجزوا لو في حد حجز وتاريخ وسعر الرحلة
  print('Enter ID:');
  int id=int.parse(stdin.readLineSync());
  print('Enter Location:');
  String location= stdin.readLineSync();
  print('Enter Passenger limit:');
  int passenger_limit=int.parse(stdin.readLineSync());
  print('Enter registered passengers:');
  int registered_passengers=int.parse(stdin.readLineSync());
//هنا بستقبل السنة والسهر واليوم عشان التاريخ
  print('Enter Date(year month day):');
  int year=int.parse(stdin.readLineSync());
  int month=int.parse(stdin.readLineSync());
  int day=int.parse(stdin.readLineSync());
  print('Enter Price:');
  double price=double.parse(stdin.readLineSync());
    //بعد ما استقبلت القيم عملت اوبجكت من نوع تريب وبدخل القيم اللي استقبلتها فيه
  Trip trip =new Trip(id, location, passenger_limit,registered_passengers,DateTime(year,month,day) , price);
    //بضيف الرحلة الجديدة عالمابس اللي عملتها قبل كدا من
    //  ماب الاي دي والترتيب عن طريق الوقت والتخفيض وبعد كدا بطبع الرحلة اللي اتسجلت
  trip_id.addAll({id:trip});
  ordered_trips.add(DateTime(year,month,day));
  trip_date.addAll({DateTime(year,month,day):trip});
  trip_price.addAll({price:trip});
  trip.print_Trip();
  }

  void edit_trip(){
    //اول حاجة هيستقبل الاي دي
    print('Enter ID:');
    int id=int.parse(stdin.readLineSync());
    //بعد كدا هيستقبل رقم الحاجة اللي هيغيرها
    print('Choose the number:\n'
        ' (1) for Id.\n'
        ' (2) for location.\n'
        ' (3) for passenger limit.\n'
        ' (4) for date.\n'
        ' (5) for price.\n'
        ' the number : ');
    int key = int.parse(stdin.readLineSync());
    //بعد كدا هيكتب القيمة الجديدة بتاعتها
    print('Enter the value:');
    var value;
    //لو الرقم بيساوي واحد او تلاتة هيغير الاي دي او اقصي عدد للمسافرين
    if(key==1||key==3)
      value=int.parse(stdin.readLineSync());
    //لو الرقم بيساوي اربعة هيغير التاريخ
    else if(key==4)
    {int year=int.parse(stdin.readLineSync());
    int month=int.parse(stdin.readLineSync());
    int day=int.parse(stdin.readLineSync());
    value=DateTime(year,month,day);}
    //لو خمسة هيغير السعر
    else if(key==5)
      value=double.parse(stdin.readLineSync());
    //الباقي هيغير المكان
    else
      //بعد كدا هستدعي ماب الاي دي واغير فيها القيم و اطبع الرحلة بعد التعديل
      value=stdin.readLineSync();
    trip_id[id].edit(key,value);
    trip_id[id].print_Trip();
  }

  void delete_trip(){
    //هيدخل الاي دي ويروح ع ماب الاي دي ويعمل ريموف للرحلة اللي عايزاها
    print('Enter the ID:');
    int id=int.parse(stdin.readLineSync());
    trip_id.remove(id);
  }

  void view_trips(){
    //هيحصل مقارنة بين كل تاريخ رحلة والتانية من خلال ليست التاريخ وماب التاريخ اللي عملتهم قبل كدا ويطبعهم مترتبين
    ordered_trips.sort((a, b) => b.compareTo(a));
    for(int i=0;i<ordered_trips.length;i++){
      trip_date[ordered_trips[i]].print_Trip();
    }
  }

  void search_trip() {
    //هيدخل سعر الرحلة وبعدها يطبع الرحلة من خلال ماب للسعر عملتها قبل كدا
    print('Enter the price:');
    int price = int.parse(stdin.readLineSync());
    trip_price[price].print_Trip();

  }

  void reserve_trip(){
    //هيختار رقم المكان
print('Choose the number of the trip location: \n'
      '1)Alex\n'
      '2)Cairo\n'
      '3)Aswan');
int location_number=int.parse(stdin.readLineSync());
//هيكتب عدد الاماكن اللي عايز يحجزها
print('the places number you want to reserve:');
int places_number=int.parse(stdin.readLineSync());
//هيسجل عدد الاماكن من خلال ميثود الحجز اللي عملتها قبل كدا ويطبع الرحلة بعد التجسيل
trip_location[location_number].reserve(places_number);
trip_location[location_number].print_Trip();
  }

  void discount_trip(){
    //هيدخل السعر وطبع الرحلة بعدها يطبع السعر قبل وبعد التخفيض من خلال ميثود عملتها قبل كدا
    print('the trip price:');
    int price=int.parse(stdin.readLineSync());
    print('your trip is:');
    trip_price[price].print_Trip();
    trip_price[price].discount();
}

  void latest_trips(){
    //لوب بتبدا من اخر قيمة فليست الرحلات وقيمها الاي دي ويبدا يلف ويطبع لحد ما الكونت يوصل لعشرة يخرج ماللوب
    int count =0;
    for(int i=last_trips.length-1;i>=0;i--){
      trip_id[last_trips[i]].print_Trip();
      count+=1;
      if(count==10)
       break;

    }
  }

  void view_passengers(){
    //لوب هتطبع اسماء المسافرين كل واحدة لوحدها
    for(int i=1;i<last_trips.length+1;i++)
print('$i: ${trip_passengers[i]}');
  }
}




class Trip {
  int id;
  String location;
  int passengers_limit;
  int registered_passengers;
  DateTime date;
  double price;
//كونستراكتور عملته عشان اعمل منه اوبجكتس بعدين واسمه تريب عشان اسم الكلاس كدا
// بيستقبل الاي دي والمكان واقصي عدد للمسافرين والناس اللي حجزت ووقت وسعر الرحلة
  Trip(int id, String location, int passengers_limit,int registered_passengers, DateTime date,
      double price) {
    this.id = id;
    this.location = location;
    this.passengers_limit = passengers_limit;
    this.date = date;
    this.price = price;
    this.registered_passengers=registered_passengers;
  }
//ميثود بتطبع بيانات اي رحلة من الاي دي والمكان
// واقصي عدد للمسافرين والناس اللي حجزت ووقت وسعر الرحلة بحتاجها فبعض الحاجات
  void print_Trip(){
    print('ID:$id \nLocation:$location\n'
    'Passenger limit:$passengers_limit\nRegistered passangers:$registered_passengers\nDate:$date\nPrice:$price');
  }
//ميثود بعدل منها اي رحلة بحتاجها فحاجات زي
// ميثود تعديل الرحلة من خلال انها بتستقبل كي و فاليو
// لو الكي بيساوي رقم الفاليو هتساوي قيمة حاجة من بيانات الرحلة واقدر اعدل عليها
  void edit(int key,var value){
  switch(key){
    case 1:
      this.id=value;break;
    case 2:
      this.location=value;break;
    case 3:
      this.passengers_limit=value;break;
    case 4:
      this.date=value;break;
    case 5:
      this.price=value;break;
    default :break;
  }
  }
//ميثود بستخدمها فحجز الرحلة بعملها كولنج فالميثود
// ففولدر الاوبريشنز فميثود الحجز عن طريق استقبال عدد الاماكن لو العدد
// عدد اللي حاجزين اقل مالحد الاقصي هيسجل ويزود عدد
// الحاجزين+ لو لا هيقوله ان المكان مليان او عدد الاماكن كبير
  void reserve(int places_number){
   this.passengers_limit=passengers_limit;
   this.registered_passengers=registered_passengers;
    if(passengers_limit>=(registered_passengers+places_number)) {
      print('you reserved successfully');
      registered_passengers += places_number;
    }
    else print('sorry the trip is full or places number is big');

  }
//ميثود لتخفيض ثمن الرحلة لو الثمن اكبر من عشرة الاف
// هيطبعله سعر الرحلة قبل وبعد التخقيض لو لا هيقوله مفيش تخفيض عالرحلة
  void discount(){
    this.price=price;
    if(price>10000){
      print('the price before discount:$price');
      price*=(80/100);
    print('the price after discount:$price');}
  else print('sorry there is no discount for this trip');
  }

}
//ماب بخزن فيها الاي دي وقيم من نوع تريب اللي هي اسم الكلاس
Map<int , Trip> trip_id = {
  1: Trip(1,'Aswan',50,25,DateTime(2021,8,10),100),
  2:Trip(2,'Cairo',100,50,DateTime(2021,6,1),200),
 3:Trip(3,'Alex',25,10,DateTime(2021,5,5),20000)};
//ماب بخزن فيها السعر وقيم من نوع تريب
Map<double , Trip> trip_price = {
  100: Trip(1,'Aswan',50,25,DateTime(2021,8,10),100),
  200:Trip(2,'Cairo',100,50,DateTime(2021,6,1),200),
  20000:Trip(3,'Alex',25,10,DateTime(2021,5,5),20000)};
//ماب بخزن فيها وقت الرحلة والقيم بتاعتها تريب
Map<DateTime , Trip> trip_date = {
  DateTime(2021,8,10): Trip(1,'Aswan',50,25,DateTime(2021,8,10),100),
  DateTime(2021,6,1):Trip(2,'Cairo',100,50,DateTime(2021,6,1),200),
  DateTime(2021,5,5):Trip(3,'Alex',25,10,DateTime(2021,5,5),20000)};
//ليست بخزن فيها تواريخ الرحلات عشان ارتبها بعدين
List<DateTime> ordered_trips=[DateTime(2021,5,5), DateTime(2021,6,1),DateTime(2021,8,10)];
//ليست بضيف فيها الاي دي عشان ميثود عرض اخر عشر رحلات
List<int> last_trips=[1,2,3];
//ماب بخزن فيها المكان والكي بتاعها ارقام الاماكن فالطباعة فميثود الحجز
Map<int , Trip> trip_location = {
  3:Trip(1,'Aswan',50,25,DateTime(2021,8,10),100),
  2:Trip(2,'Cairo',100,50,DateTime(2021,6,1),200),
  1:Trip(3,'Alex',25,10,DateTime(2021,5,5),20000)};
//ماب بخزن فيها اسماء المسافرين والكي بتاعها الأي دي
Map<int , List<String>> trip_passengers = {
  1:['mohammed\n','ahmed'],
  2:['asaad\n','aliaa'],
  3:['omar\n','aya']};



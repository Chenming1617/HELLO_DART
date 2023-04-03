import '05class.dart';

class Oriter extends Spacecraft{
  double altitude;
  Oriter(super.name,DateTime super.launchDate,this.altitude);
}

void main(){
  var voyager1 = Oriter('Voyager IV', DateTime(2017, 8, 9),8848.88);
  voyager1.describe();
  print('altitude:${voyager1.altitude}');
}
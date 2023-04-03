import '05class.dart';

mixin Piloted{
  int astronauts =1;
  void describeCrew(){
    print('Number of astronauts:$astronauts');
  }
}
class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name,DateTime super.launchDate);
}

void mian(){
  var voyager1 = PilotedCraft('Voyager IV', DateTime(2017, 8, 9));
  voyager1.describe();
  
}
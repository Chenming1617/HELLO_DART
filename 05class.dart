
class Spacecraft{
  String name;
  DateTime ? launchDate;

  //Read-only non-final property
  int ?get launchYear=>launchDate?.year;

  //Constructor,with syntactic sugarnfor assignment to members
  Spacecraft(this.name,this.launchDate){
    name =this.name;
    launchDate=this.launchDate;
  }
  Spacecraft.unlaunched(String name):this(name,null);

  void describe(){
    print('Spacecraft: $name');
    var launchDate =this .launchDate;
    if (launchDate!=null){
      int years=DateTime.now().difference(launchDate).inDays ~/365;
      print('Launched:$launchYear($years years ago)');
    }
    else{
      print('Unlaunched');
    }
  }
}

main(){
  var voyager1 = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager1.describe();
  var voyager=Spacecraft.unlaunched('VoyagerIII');
  voyager.describe();
}
class Spacecraft {
  String name;
  DateTime? launchDate;

  //Read-only non-final property
  int? get launchYear => launchDate?.year; //胖剪头表示函数调用

  //Constructor,with syntactic sugarnfor assignment to members
  Spacecraft(this.name, this.launchDate) {
    name = this.name;
    launchDate = this.launchDate;
  }
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched:$launchYear($years years ago)'); //赋值$
    } else {
      print('Unlaunched');
    }
  }
}

main() {
  var voyager1 = Spacecraft('Voyager I', DateTime(1977, 9, 5)); //日期对象
  voyager1.describe(); //点操作符，操作内部函数
  var voyager = Spacecraft.unlaunched('VoyagerIII');
  voyager.describe();
}
//函数和方法的区别，函数在特定的场景里是方法，方法更加具体
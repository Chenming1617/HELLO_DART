enum PlanetType { terrestrial, gas, ice }
enum Planet{//字典
  mercury(planetType:PlanetType.terrestrial,moons:0,hasRings:false),
  venus(planetType:PlanetType.gas,moons:11,hasRings:false),
  uranus(planetType:PlanetType.ice,moons:27,hasRings:true),
  neptune(planetType:PlanetType.ice,moons:14,hasRings:true);

  const Planet(
    {required this.planetType,required this.moons,required this.hasRings});
    final PlanetType planetType;//默认是final，需要同步的变量越少开销越少
    final int moons;
    final bool hasRings;
    bool get isGiant=> planetType==PlanetType.gas||planetType==PlanetType.ice;
}

void main(List<String> args) {
  final yourPlanet =Planet.mercury;
  if(!yourPlanet.isGiant){
    print('Your planet is not a "giant planet".');
  }  
}

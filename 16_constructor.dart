
void main(){
  final Car blueCar = Car(color: 'blue', engine: 'v8');
  print(blueCar.engine);
}

class Car {

  //! CONSTRUCTOR.
  Car({required this.color, required this.engine});
  
  //! ATTRIBUTE CAN BE ADDED HERE.
  final String color;
  final String engine;

  //! METHODS CAN BE ADDED HERE.
  void drive(){
    print('$color car is moving');
  }

  void whichColor(){
    print('car color: ${this.color}');
  }
}

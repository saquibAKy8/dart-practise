
void main(){

  Car car1 = Car();
  car1.setColor = 'blue';

  Car car2 = Car();
  car2.setColor = 'orange';

  String colorFromCar1 = car1.color;

  print('color from car1 is $colorFromCar1');

  car1.whichColor();
  car2.whichColor();

  car1.drive();

}

class Car {
  //! ATTRIBUTE CAN BE ADDED HERE.
  late String _color;

  //! SETTER -> SET ATTRIBUTE.
  set setColor(String color){
    //HERE YOU CAN VALIDATE THE COLOR.
    this._color = color;
  }

  //! GETTER.
  String get color => this._color;

  //! METHODS CAN BE ADDED HERE.
  void drive(){
    print('$_color car is moving');
  }

  void whichColor(){
    print('car color: ${this._color}');
  }
}

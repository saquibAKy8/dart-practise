
void main(){

  Car car1 = Car();
  car1.color = 'blue';

  Car car2 = Car();
  car2.color = 'orange';

  car1.whichColor();
  car2.whichColor();

  car1.drive();
  car2.drive();

}

class Car {
  //! ATTRIBUTE CAN BE ADDED HERE.
  late String color;

  //! METHODS CAN BE ADDED HERE.
  void drive(){
    print('$color car is moving');
  }

  void whichColor(){
    print('car color: ${this.color}');
  }
}

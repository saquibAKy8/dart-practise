
void main(){
  Student student1 = Student();
  student1.setId = 1821908;
  student1._name = 'Saquib';
  student1._age = 24;

  Person person1 = Person();
  person1.setName = 'Nasif';
  person1.setAge = 25;

  int id = student1.getId;

  print(id);

  student1.jump();
  student1.party();
  student1.run();
  student1.study();
}

mixin Partier{
  void party(){
    print('I want to go party');
  }
}

mixin Jumper{
  void jump(){
    print('I can jump');
  }
}

class Person {

  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name){
    this._name = name;
  }

  set setAge(int age){
    this._age = age;
  }

  void run(){
    print('$_name of age $_age runs!');
  }

}

class Student extends Person with Jumper, Partier{
  late int _id;

  int get getId => this._id;

  set setId(int id){
    this._id = id;
  }

  void study(){
    print('$_name with id: $_id is studying!');
  }

}

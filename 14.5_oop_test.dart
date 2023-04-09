
void main(){

  User user1 = User();
  user1.name = 'Toky';
  user1.age = 25;
  user1.cgpa = 2.75;
  user1.user_type = 'student';
  user1.userDetail();

  User user2 = User();
  user2.name = 'Mahady';
  user2.age = 55;
  user2.cgpa = 3.5;
  user2.user_type = 'faculty';
  user2.userDetail();

}

class User {
  late String name;
  late int age;
  late double cgpa;
  late String user_type;

  void userDetail(){
    print('$name is $age years old, has a cgpa of $cgpa and is a $user_type.');
  }
}

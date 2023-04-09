
void main(){
  bool boolOutput = false; //can only be true or false.
  print(boolOutput);

  int intOutput = 3;
  print(intOutput);

  double doubleOutput = -1.5;
  print(doubleOutput);

  String stringOutput = 'hello, how are you?';
  print(stringOutput);
  print('Hello, youngee, I hope you are well.');

  print('The value of the int is $intOutput');
  print('The value of the double is $doubleOutput');
  print('The value of the bool is $boolOutput');

  dynamic dynamicVariable = 'can be int , double, or string but not recommended to use this';
  print(dynamicVariable);

  //KEYWORDS:

  late int intLate; //can assign value later. 
  intLate = -5;
  print(intLate);

  final int intFinal = 7; //can only be set once
  print(intFinal);

  const int intConstant = -9;
  print(intConstant);

  var varOutput = 'dont have to mention data type'; //changes data type to whichever data used, better to use this than dynamic.
  //cannot reuse var varOutput once assigned.
  print(varOutput); 
}

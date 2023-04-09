
void main(){

  print('method without return value: ');

  int number1 = 4;
  int number2 = 7;
  add(num1: number1, num2: number2);

  print('method with return value: ');

  int result = add2(num1: number1, num2: number2);
  print(result);

  int result2 = add2(num1: result, num2: number2);
  print(result2);

}

void add({required int num1, required int num2}){
  int result = num1 + num2 ;
  print(result);
}

int add2({required int num1, required int num2}){
  int result = num1 + num2 ;
  return result;
}
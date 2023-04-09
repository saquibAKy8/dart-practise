
void main(){
  print('before: ');
  power(4);
  print('after: ');
  power(60);
  power(100);
  power(2);
}

void power(int x){
  int y = x * x;
  print('the power of $x is $y');
}

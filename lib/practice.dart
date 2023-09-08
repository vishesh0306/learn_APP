
void main(){
  var vishesh = Human();  //creating an Class Object

  int? a;     //Declaration of a variable
  a = 5;      //Initialising a variable
  print(a);

  String name = 'vishesh';    //inline initialization
  print(name);

  BigInt longValue;     //holds big integer values
  longValue = BigInt.parse('1234567890987654321223345');
  print(longValue);

  double percentage = 99.34;    //only decimal numbers
  print(percentage);

  num number = 6.3;     //can hold int as well as decimal numbers
  print(number);

  bool isLogin = false;   //boolean values
  print(isLogin);
}

class Human{

  Human();

}
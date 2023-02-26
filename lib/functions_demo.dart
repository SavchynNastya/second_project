bool compareIntegers(int a, int b) => a >= b;
int multiply(int a, int b) => a * b;

prepareCoffee(name, component, {String base='espresso robusta'}){
  int counter = 1;
  return () => print('You have prepared ${counter++} $name with $component, base: $base');
}

void callFunctions(){
  print('FUNCTIONS DEMO');

  int a = 3, b = 4;
  print('Lambda function comparing integers a and b ${compareIntegers(a, b)}');
  
  print('Closure function');
  var preparingLatte = prepareCoffee('latte', 'milk');
  preparingLatte();
  preparingLatte();
  preparingLatte = prepareCoffee('latte', 'milk', base:'espresso arabica');
  preparingLatte();
}
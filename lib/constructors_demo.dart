abstract class CatchesMouse{
  void catchMouse(){
    print('I can catch a mouse');
  }
}

class Cat with CatchesMouse {
  String name;
  int age;

  Cat._initialize(n, a) : name=n, age=a;

  factory Cat(String name, int age){
    return age > 0 ? Cat._initialize(name, age) : throw Exception('Age should be positive');
  }

  @override
  String toString() {
    return 'Name $name, Age $age';
  }
}

class Dog{
  String name;
  int age;

  Dog._initialize(n, a) : name=n, age=a;

  factory Dog(String name, int age){
    return age > 0 ? Dog._initialize(name, age) : throw Exception('Age should be positive');
  }

  @override
  String toString() {
    return 'Name $name, Age $age';
  }
}
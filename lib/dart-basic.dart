void main() {
  var animal1 = new Animal(name: 'Swagcat', age: 10);
  print(animal1.name);
  print(animal1.age);
  animal1.menyusui();
  animal1.jump();

  var animal2 = new Animal(name: 'SwagDog', age: 15);
  print(animal2.name);
  print(animal2.age);
  animal2.menyusui();
  animal1.jump();

  var animal3 = new Animal(name: 'SwagBat', age: 17);
  print(animal3.name);
  print(animal3.age);
  animal3.menyusui();
  animal3.fly();
}

/// Inheritance and Mixin
class Animal extends Mammals with Fly, Jump {
  String? name;
  int? age;

  /// Positional Arguments
  // Animal(this.name, this.age);

  /// Named Arguments
  Animal({this.name, this.age});
}

class Mammals {
  void menyusui() {
    print("This animal can breastfeed because it is a mamals");
  }
}

class Jump {
  void jump() {
    print('This animal can Jump');
  }
}

class Fly {
  void fly() {
    print('This animal can fly');
  }
}

import '../interface/person_interface.dart';

void main() {}

enum ethnicityType {
  white,
  black,
}

enum sizeType {
  tall,
  short,
}

enum heightType {
  heavy,
  light,
}

enum strengthType {
  strong,
  weak,
}

enum agilityType {
  fast,
  slow,
}

class PersonModel implements personInterface {
  String name;
  int age;
  PersonModel({
    required this.name,
    required this.age,
  });

  bool _rested = false;
  bool _satiated = false;
  bool _hydrated = false;

  @override
  void drink() {
    _hydrated = true;
  }

  @override
  void eat() {
    _satiated = true;
  }

  @override
  void sleep() {
    _rested = true;
  }

  @override
  void work() {
    if (_rested == true && _satiated == true && _hydrated == true) {
      _rested = false;
      _satiated = false;
      _hydrated = false;
      print("você trabalhou hoje mas deveria se alimentar, hidratar e dormir");
    } else {
      print("você não está em condições de trabalhar");
    }
  }

  @override
  agilityType agility = agilityType.fast;

  @override
  ethnicityType ethnicity = ethnicityType.white;

  @override
  heightType height = heightType.heavy;

  @override
  sizeType size = sizeType.tall;

  @override
  strengthType strength = strengthType.strong;
}

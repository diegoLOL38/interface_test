import '../interface/person_interface.dart';
import 'person_model.dart';

enum categoriesType {
  ciclism,
  tennis,
  fencing,
  swimming,
}

class OlympicModel implements personInterface {
  String name;
  int age;
  OlympicModel({
    required this.name,
    required this.age,
    required this.categories,
  });

  categoriesType categories;

  bool _rested = false;
  bool _satiated = false;
  bool _hydrated = false;

  @override
  agilityType agility = agilityType.slow;

  @override
  ethnicityType ethnicity = ethnicityType.black;

  @override
  heightType height = heightType.light;

  @override
  sizeType size = sizeType.tall;

  @override
  strengthType strength = strengthType.strong;

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
}

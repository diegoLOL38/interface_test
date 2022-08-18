import '../interface/person_interface.dart';
import 'person_model.dart';

enum styleType {
  boxing,
  kickBoxing,
  jiuJitsu,
  muayThai,
}

class FighterModel implements personInterface {
  String name;
  int age;
  styleType style;

  FighterModel({
    required this.name,
    required this.age,
    required this.style,
  });

  bool _rested = false;
  bool _satiated = false;
  bool _hydrated = false;

  @override
  agilityType agility = agilityType.fast;

  @override
  ethnicityType ethnicity = ethnicityType.black;

  @override
  heightType height = heightType.heavy;

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

import 'interface/person_interface.dart';
import 'models/fighter-model.dart';
import 'models/olympic-model.dart';
import 'models/person_model.dart';

void main() {
  final person1 = PersonModel(name: "Dongo", age: 18);

  final fighter1 =
      FighterModel(name: "Erika", age: 20, style: styleType.kickBoxing);

  final olympic1 =
      OlympicModel(name: "Bob", age: 32, categories: categoriesType.tennis);

  myPessoa(person1);
}

void myPessoa(personInterface myPerson) {
  print(myPerson.strength);

  myPerson.work();
  myPerson.drink();
  myPerson.eat();
  myPerson.sleep();
  myPerson.work();
}

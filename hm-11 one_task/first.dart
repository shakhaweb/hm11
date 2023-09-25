class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  static String getInfo(Person person) {
    return " Name: ${person.name}, Age: ${person.age}";
  }

  static bool isAdult(Person person) {
    return person.age >= 18;
  }
}

void main(List<String> args) {
  final person = Person(name: "shakha", age: 19);

  final personInfo = Person.getInfo(person);
  final isAdult = Person.isAdult(person);
  print("person info:  $personInfo");
  print('is Adult:$isAdult');
}
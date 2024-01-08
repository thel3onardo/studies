//every dart program has a main() function as a entry point

//Class

class Spacecraft {
  String name;
  DateTime? launchDate;

  //Read-only non-final property
  int? get launchYear => launchDate?.year;

  //constructor
  Spacecraft(this.name, this.launchDate);

  //named constructor
  Spacecraft.unlaunched(String name) : this(name, null);

  //method
  void describe() {
    print('Spacecraft $name');

    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
      return;
    }

    print("Unlaunched");
  }
}

//Inheritance
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);

  @override
  //same method name as Spacecraft class
  void describe() {
    print("I am overriding");
    print(
        "Spacecraft name: ${super.name}, launchDate: ${super.launchDate}; altitude: ${this.altitude}");
  }
}

void main() {
  print("Hello, world");

  var name = "leonardo";
  var age = 18;

  print('My name is ${name} and I am ${age} years old');
  print("I am $name");

  //I can also use ternary operator
  print("My name is ${name} and I ${age > 18 ? 'can' : 'cannot'} drive");

  //objects
  var cities = ['Jau', 'Bauru', 'Joao Pessoa', 'Campinas'];
  print(cities.isEmpty);
  print(cities.contains("Bauru"));
  print(cities.map((e) => '$e !'));
  print(cities.take(2));

  //control flow
  if (age < 18) {
    print("You are underage");
  } else if (age >= 18) {
    print("you're major!");
  }

  //Iteration over objects
  for (final city in cities) {
    print(city);
  }

  for (int month = 1; month <= 12; month++) {
    print("Month $month");
  }

  //using the keyword "new" in a constructor is optional
  var voyager = Spacecraft("minha nave", DateTime(2003, 01, 01));
  var voyager1 = Spacecraft.unlaunched("nave sem launch");

  voyager.describe();
  // voyager1.describe();

  //using the Orbiter class
  var orbiter1 = Orbiter("Nave 1", DateTime(1993, 01, 01), 2.2);

  orbiter1.describe();
}

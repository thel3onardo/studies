// Object represents any type

Object name = "leonardo";
dynamic name1 = 2;

void main() {
  name = 2; //I can do this because name has type Object
  name1 = "leonardo";

  //null-safety
  String? person_name; //defaults to null
  int age;

  assert(person_name != null);

  // print(age); //Cannot referece age here, beucase it was not assigned

  //final and Const
  final name = "leonardo";
  final String surname = "oliveira";

  name = "sofia";
}

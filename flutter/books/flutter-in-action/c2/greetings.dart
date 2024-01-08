import "dart:io";

void main() {
  stdout.writeln("Greet somebody");
  String? input = stdin.readLineSync();

  if (input != null) {
    greetSomebody(input);
  }
}

greetSomebody(String name) {
  print("Hello, $name");
}

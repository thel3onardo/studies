import "dart:io";

void main() {
  String input = '';
  int remainingChances = 4;

  while (input.toLowerCase() != "leonardo" && remainingChances > 0) {
    stdout.writeln("What is my name: 'Sofia', 'Leonardo', 'Maria'");

    input = stdin.readLineSync() as String;

    if (input == "leonardo") {
      stdout.writeln("Correct answer!");
      return;
    }

    stdout.writeln("Invalid answer");

    remainingChances--;
    stdout.writeln("Remaining chances: $remainingChances");
  }
  if (remainingChances == 0) {
    return stdout.writeln("No more chances");
  }
}

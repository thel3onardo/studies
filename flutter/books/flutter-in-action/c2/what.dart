void main() {
  print("hello, world");

  List<String> greetings = ["Brazil", "EUA", "United Kingdom"];
  var greetings2 = ["this", "is", "what", "it", "is", 1];

  greetings.forEach((element) {
    greetCountry(element);
  });

  for (var name in greetings) {
    greetCountry(name);
  }
}

void greetCountry(String country) {
  print("hello, $country");
}

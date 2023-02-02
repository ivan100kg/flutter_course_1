double addNumber(double d1, double d2) {
  return (d1 / d2);
}

void main(List<String> args) {
  print('We have ${args.length} args');
  var hui = addNumber(12.3, 13.2);
  hui = addNumber(13.3, 1.2);
  print(hui);
  Person person = Person();
  print(person.show());
}

class Person {
  String name = '';
  int age = 0;
  String show() {
    return 'name:$name\nage:$age';
  }
}

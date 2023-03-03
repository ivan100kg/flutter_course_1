import "package:flutter_complete_guide/learn-data/human.dart";

final humans = [
  Human(name: "Ivan", age: 40, address: [
    Address(city: "Samara", country: "Russia", house: 17),
    Address(city: "Moskow", country: "Russia", house: 23),
    Address(city: "Los Angeles", country: "USA", house: 133),
  ]),
  Human(name: "DiDi", age: 22, address: [
    Address(city: "Ulyanovsk", country: "Russia", house: 17),
    Address(city: "Moskow", country: "Russia", house: 23),
    Address(city: "Los Angeles", country: "USA", house: 133),
  ]),
];

final jsonString = '''[
  {"name": "Ivan", "age": 40, "address": [
    {"city": "Samara", "country": "Russia", "house": 17},
    {"city": "Moskow", "country": "Russia", "house": 23},
    {"city": "Los Angeles", "country": "USA", "house": 133}
  ]},
  {"name": "DiDi", "age": 22, "address": [
    {"city": "Ulyanovsk", "country": "Russia", "house": 17},
    {"city": "Moskow", "country": "Russia", "house": 23},
    {"city": "Los Angeles", "country": "USA", "house": 133}
    ]}
  ]''';

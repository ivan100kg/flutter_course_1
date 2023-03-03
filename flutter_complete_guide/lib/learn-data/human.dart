class Human {
  String name;
  int age;
  List<Address> address;

  Human({
    required this.name,
    required this.age,
    required this.address,
  });

  factory Human.fromJson(Map<String, dynamic> json) {
    return Human(
      name: json['name'] as String,
      age: json['age'] as int,
      address: (json['address'] as List<dynamic>)
          .map((dynamic e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'address': address.map((e) => e.toJson()).toList(),
    };
  }
}

class Address {
  String country;
  String city;
  int house;

  Address({
    required this.city,
    required this.country,
    required this.house,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'] as String,
      house: json['house'] as int,
      country: json['country'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'city': city,
      'house': house,
      'country': country,
    };
  }
}

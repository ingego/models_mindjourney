import 'dart:convert';

abstract class UserEntity {}

class UserEmpty extends UserEntity {}

class User extends UserEntity {
  String name;
  String email;
  String? password;
  String? phone;
  String uuid;
  DateTime registrationDate;
  bool isSubscribe;
  DateTime? endDateSubscribed;
  List<String> buyedPackages;
  List<String> favoriteMeta;
  List<String> favoriteMedi;

  User({
    required this.name,
    required this.email,
    this.password,
    this.phone,
    required this.uuid,
    required this.registrationDate,
    this.isSubscribe = false,
    this.endDateSubscribed,
    this.buyedPackages = const [],
    this.favoriteMeta = const [],
    this.favoriteMedi = const [],
  });

  factory User.fromJson(Map<String, dynamic> jsonStr) {
    final Map<String, dynamic> data = jsonStr;
    return User(
      name: data['name'],
      email: data['email'],
      password: data['password'],
      phone: data['phone'],
      uuid: data['uuid'],
      registrationDate: DateTime.parse(data['registration_date']),
      isSubscribe: data['is_subscribe'] ?? false,
      endDateSubscribed: data['end_date_subscribed'] != null
          ? DateTime.parse(data['end_date_subscribed'])
          : null,
      buyedPackages: List<String>.from(data['buyed_packages'] ?? []),
      favoriteMeta: List<String>.from(data['favorite_meta'] ?? []),
      favoriteMedi: List<String>.from(data['favorite_medi'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'uuid': uuid,
      'registration_date': registrationDate.toIso8601String(),
      'is_subscribe': isSubscribe,
      'end_date_subscribed': endDateSubscribed?.toIso8601String(),
      'buyed_packages': buyedPackages,
      'favorite_meta': favoriteMeta,
      'favorite_medi': favoriteMedi,
    };
    return (data);
  }
}

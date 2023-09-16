import 'dart:convert';

abstract class UserEntity {}

class UserEmpty extends UserEntity {}

class User extends UserEntity {
  final String name;
  final String email;
  final String? password;
  final String? phone;
  final String uuid;
  final DateTime registration_date;
  final bool is_subscribe;
  final DateTime? end_date_subscribed;
  final List<String> buyed_packages;
  final List<String> favorite_meta;
  final List<String> favorite_medi;
  final Map<DateTime, List<String>> history_user;

  User({
    required this.name,
    required this.email,
    this.password,
    this.phone,
    required this.uuid,
    required this.registration_date,
    this.is_subscribe = false,
    this.end_date_subscribed,
    required this.buyed_packages,
    required this.favorite_meta,
    required this.favorite_medi,
    required this.history_user,
  });

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        password = json['password'],
        phone = json['phone'],
        uuid = json['uuid'],
        registration_date = DateTime.parse(json['registration_date']),
        is_subscribe = json['is_subscribe'] ?? false,
        end_date_subscribed = json['end_date_subscribed'] != null
            ? DateTime.parse(json['end_date_subscribed'])
            : null,
        buyed_packages = List<String>.from(json['buyed_packages']),
        favorite_meta = List<String>.from(json['favorite_meta']),
        favorite_medi = List<String>.from(json['favorite_medi']),
        history_user = (json['history_user'] as Map<String, dynamic>).map(
          (key, value) =>
              MapEntry(DateTime.parse(key), List<String>.from(value)),
        );

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
        'uuid': uuid,
        'registration_date': registration_date.toIso8601String(),
        'is_subscribe': is_subscribe,
        'end_date_subscribed': end_date_subscribed?.toIso8601String(),
        'buyed_packages': buyed_packages,
        'favorite_meta': favorite_meta,
        'favorite_medi': favorite_medi,
        'history_user': history_user
            .map((key, value) => MapEntry(key.toIso8601String(), value)),
      };

  User copyWith({
    String? name,
    String? email,
    String? password,
    String? phone,
    String? uuid,
    DateTime? registration_date,
    bool? is_subscribe,
    DateTime? end_date_subscribed,
    List<String>? buyed_packages,
    List<String>? favorite_meta,
    List<String>? favorite_medi,
    Map<DateTime, List<String>>? history_user,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      uuid: uuid ?? this.uuid,
      registration_date: registration_date ?? this.registration_date,
      is_subscribe: is_subscribe ?? this.is_subscribe,
      end_date_subscribed: end_date_subscribed ?? this.end_date_subscribed,
      buyed_packages: buyed_packages ?? this.buyed_packages,
      favorite_meta: favorite_meta ?? this.favorite_meta,
      favorite_medi: favorite_medi ?? this.favorite_medi,
      history_user: history_user ?? this.history_user,
    );
  }
}

class MetaCard {
  String name;
  String uuid;
  String imageUrl;
  String meditationUuid;
  String title;
  String description;
  String affirmation;
  String advice;

  MetaCard({
    required this.name,
    required this.uuid,
    required this.imageUrl,
    required this.meditationUuid,
    required this.title,
    required this.description,
    required this.affirmation,
    required this.advice,
  });

  factory MetaCard.fromJson(Map<String, dynamic> json) {
    return MetaCard(
      name: json['name'],
      uuid: json['uuid'],
      imageUrl: json['image_url'],
      meditationUuid: json['meditation_uuid'],
      title: json['title'],
      description: json['description'],
      affirmation: json['affirmation'],
      advice: json['advice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uuid': uuid,
      'image_url': imageUrl,
      'meditation_uuid': meditationUuid,
      'title': title,
      'description': description,
      'affirmation': affirmation,
      'advice': advice,
    };
  }
}

class Meditation {
  String uuid;
  String next;
  String previous;
  String meditationUrl;
  bool isBuyed;
  int type;
  String? image;
  int meditationType;
  String title;
  int duration;

  Meditation({
    required this.uuid,
    required this.next,
    required this.previous,
    required this.meditationUrl,
    this.isBuyed = false,
    required this.type,
    this.image,
    required this.meditationType,
    required this.title,
    required this.duration,
  });

  factory Meditation.fromJson(Map<String, dynamic> json) {
    return Meditation(
      uuid: json['uuid'],
      next: json['next'],
      previous: json['previous'],
      meditationUrl: json['meditation_url'],
      isBuyed: json['is_buyed'] ?? false,
      type: json['type'],
      image: json['image'],
      meditationType: json['meditation_type'],
      title: json['title'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'next': next,
      'previous': previous,
      'meditation_url': meditationUrl,
      'is_buyed': isBuyed,
      'type': type,
      'image': image,
      'meditation_type': meditationType,
      'title': title,
      'duration': duration,
    };
  }
}

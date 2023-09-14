class Localization {
  MetaCardLocalization metaCard;
  MainLocalization main;
  MeditationLocalization meditation;
  ProfileLocalization profile;
  SettingsLocalization settings;

  Localization({
    required this.metaCard,
    required this.main,
    required this.meditation,
    required this.profile,
    required this.settings,
  });

  factory Localization.fromJson(Map<String, dynamic> json) {
    return Localization(
      metaCard: MetaCardLocalization.fromJson(json['meta_card']),
      main: MainLocalization.fromJson(json['main']),
      meditation: MeditationLocalization.fromJson(json['meditation']),
      profile: ProfileLocalization.fromJson(json['profile']),
      settings: SettingsLocalization.fromJson(json['settings']),
    );
  }
}

class MetaCardLocalization {
  String title;
  String description;
  String advice;
  String affirmation;

  MetaCardLocalization({
    required this.title,
    required this.description,
    required this.advice,
    required this.affirmation,
  });

  factory MetaCardLocalization.fromJson(Map<String, dynamic> json) {
    return MetaCardLocalization(
      title: json['title'],
      description: json['description'],
      advice: json['advice'],
      affirmation: json['affirmation'],
    );
  }
}

class MainLocalization {
  List<BannerLocalization> banner;
  String metaCard;
  String meditationStatus;
  String titleWithGuru;
  String education;

  MainLocalization({
    required this.banner,
    required this.metaCard,
    required this.meditationStatus,
    required this.titleWithGuru,
    required this.education,
  });

  factory MainLocalization.fromJson(Map<String, dynamic> json) {
    return MainLocalization(
      banner: List<BannerLocalization>.from(
        json['banner'].map((x) => BannerLocalization.fromJson(x)),
      ),
      metaCard: json['meta_card'],
      meditationStatus: json['medetation_status'],
      titleWithGuru: json['title_with_guru'],
      education: json['education'],
    );
  }
}

class BannerLocalization {
  String url;
  String imageUrl;

  BannerLocalization({
    required this.url,
    required this.imageUrl,
  });

  factory BannerLocalization.fromJson(Map<String, dynamic> json) {
    return BannerLocalization(
      url: json['url'],
      imageUrl: json['image_url'],
    );
  }
}

class MeditationLocalization {
  String title;
  List<ChipLocalization> chips;
  List<SupportedMeditationLocalization> supportedMeditation;

  MeditationLocalization({
    required this.title,
    required this.chips,
    required this.supportedMeditation,
  });

  factory MeditationLocalization.fromJson(Map<String, dynamic> json) {
    return MeditationLocalization(
      title: json['title'],
      chips: List<ChipLocalization>.from(
        json['chips'].map((x) => ChipLocalization.fromJson(x)),
      ),
      supportedMeditation: List<SupportedMeditationLocalization>.from(
        json['supported_medtitation']
            .map((x) => SupportedMeditationLocalization.fromJson(x)),
      ),
    );
  }
}

class ChipLocalization {
  String text;

  ChipLocalization({
    required this.text,
  });

  factory ChipLocalization.fromJson(Map<String, dynamic> json) {
    return ChipLocalization(
      text: json['text'],
    );
  }
}

class SupportedMeditationLocalization {
  String uuid;

  SupportedMeditationLocalization({
    required this.uuid,
  });

  factory SupportedMeditationLocalization.fromJson(Map<String, dynamic> json) {
    return SupportedMeditationLocalization(
      uuid: json['uuid'],
    );
  }
}

class ProfileLocalization {
  String userVersion;
  String getPremium;
  String statisticTitle;
  String viewGallery;

  ProfileLocalization({
    required this.userVersion,
    required this.getPremium,
    required this.statisticTitle,
    required this.viewGallery,
  });

  factory ProfileLocalization.fromJson(Map<String, dynamic> json) {
    return ProfileLocalization(
      userVersion: json['user_version'],
      getPremium: json['get_premium'],
      statisticTitle: json['statistic_title'],
      viewGallery: json['view_gallery'],
    );
  }
}

class SettingsLocalization {
  List<BannerLocalization> banner;
  List<PanelLocalization> panelFirst;
  List<PanelLocalization> panelTitles;

  SettingsLocalization({
    required this.banner,
    required this.panelFirst,
    required this.panelTitles,
  });

  factory SettingsLocalization.fromJson(Map<String, dynamic> json) {
    return SettingsLocalization(
      banner: List<BannerLocalization>.from(
        json['banner'].map((x) => BannerLocalization.fromJson(x)),
      ),
      panelFirst: List<PanelLocalization>.from(
        json['panel_first'].map((x) => PanelLocalization.fromJson(x)),
      ),
      panelTitles: List<PanelLocalization>.from(
        json['panel_titles'].map((x) => PanelLocalization.fromJson(x)),
      ),
    );
  }
}

class PanelLocalization {
  String text;
  String url;

  PanelLocalization({
    required this.text,
    required this.url,
  });

  factory PanelLocalization.fromJson(Map<String, dynamic> json) {
    return PanelLocalization(
      text: json['text'],
      url: json['url'],
    );
  }
}

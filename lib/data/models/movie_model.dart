import 'dart:convert';

class Movie {
  final double? score;
  final Show? show;

  Movie({
    this.score,
    this.show,
  });

  Movie copyWith({
    double? score,
    Show? show,
  }) =>
      Movie(
        score: score ?? this.score,
        show: show ?? this.show,
      );

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Movie.fromMap(Map<String, dynamic> json) => Movie(
        score: json["score"]?.toDouble(),
        show: json["show"] == null ? null : Show.fromMap(json["show"]),
      );

  Map<String, dynamic> toMap() => {
        "score": score,
        "show": show?.toMap(),
      };
}

class Show {
  final int? id;
  final String? url;
  final String? name;
  final String? type;
  final Language? language;
  final List<String>? genres;
  final Status? status;
  final int? runtime;
  final int? averageRuntime;
  final DateTime? premiered;
  final DateTime? ended;
  final String? officialSite;
  final Schedule? schedule;
  final Rating? rating;
  final int? weight;
  final Network? network;
  final Network? webChannel;
  final dynamic dvdCountry;
  final Externals? externals;
  final Image? image;
  final String? summary;
  final int? updated;
  final Links? links;

  Show({
    this.id,
    this.url,
    this.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    this.webChannel,
    this.dvdCountry,
    this.externals,
    this.image,
    this.summary,
    this.updated,
    this.links,
  });

  Show copyWith({
    int? id,
    String? url,
    String? name,
    String? type,
    Language? language,
    List<String>? genres,
    Status? status,
    int? runtime,
    int? averageRuntime,
    DateTime? premiered,
    DateTime? ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    int? weight,
    Network? network,
    Network? webChannel,
    dynamic dvdCountry,
    Externals? externals,
    Image? image,
    String? summary,
    int? updated,
    Links? links,
  }) =>
      Show(
        id: id ?? this.id,
        url: url ?? this.url,
        name: name ?? this.name,
        type: type ?? this.type,
        language: language ?? this.language,
        genres: genres ?? this.genres,
        status: status ?? this.status,
        runtime: runtime ?? this.runtime,
        averageRuntime: averageRuntime ?? this.averageRuntime,
        premiered: premiered ?? this.premiered,
        ended: ended ?? this.ended,
        officialSite: officialSite ?? this.officialSite,
        schedule: schedule ?? this.schedule,
        rating: rating ?? this.rating,
        weight: weight ?? this.weight,
        network: network ?? this.network,
        webChannel: webChannel ?? this.webChannel,
        dvdCountry: dvdCountry ?? this.dvdCountry,
        externals: externals ?? this.externals,
        image: image ?? this.image,
        summary: summary ?? this.summary,
        updated: updated ?? this.updated,
        links: links ?? this.links,
      );

  factory Show.fromJson(String str) => Show.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Show.fromMap(Map<String, dynamic> json) => Show(
        id: json["id"],
        url: json["url"],
        name: json["name"],
        type: json["type"],
        language: languageValues.map[json["language"]]!,
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
        status: statusValues.map[json["status"]]!,
        runtime: json["runtime"],
        averageRuntime: json["averageRuntime"],
        premiered: json["premiered"] == null
            ? null
            : DateTime.parse(json["premiered"]),
        ended: json["ended"] == null ? null : DateTime.parse(json["ended"]),
        officialSite: json["officialSite"],
        schedule: json["schedule"] == null
            ? null
            : Schedule.fromMap(json["schedule"]),
        rating: json["rating"] == null ? null : Rating.fromMap(json["rating"]),
        weight: json["weight"],
        network:
            json["network"] == null ? null : Network.fromMap(json["network"]),
        webChannel: json["webChannel"] == null
            ? null
            : Network.fromMap(json["webChannel"]),
        dvdCountry: json["dvdCountry"],
        externals: json["externals"] == null
            ? null
            : Externals.fromMap(json["externals"]),
        image: json["image"] == null ? null : Image.fromMap(json["image"]),
        summary: json["summary"],
        updated: json["updated"],
        links: json["_links"] == null ? null : Links.fromMap(json["_links"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "url": url,
        "name": name,
        "type": type,
        "language": languageValues.reverse[language],
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
        "status": statusValues.reverse[status],
        "runtime": runtime,
        "averageRuntime": averageRuntime,
        "premiered":
            "${premiered!.year.toString().padLeft(4, '0')}-${premiered!.month.toString().padLeft(2, '0')}-${premiered!.day.toString().padLeft(2, '0')}",
        "ended":
            "${ended!.year.toString().padLeft(4, '0')}-${ended!.month.toString().padLeft(2, '0')}-${ended!.day.toString().padLeft(2, '0')}",
        "officialSite": officialSite,
        "schedule": schedule?.toMap(),
        "rating": rating?.toMap(),
        "weight": weight,
        "network": network?.toMap(),
        "webChannel": webChannel?.toMap(),
        "dvdCountry": dvdCountry,
        "externals": externals?.toMap(),
        "image": image?.toMap(),
        "summary": summary,
        "updated": updated,
        "_links": links?.toMap(),
      };
}

class Externals {
  final dynamic tvrage;
  final int? thetvdb;
  final String? imdb;

  Externals({
    this.tvrage,
    this.thetvdb,
    this.imdb,
  });

  Externals copyWith({
    dynamic tvrage,
    int? thetvdb,
    String? imdb,
  }) =>
      Externals(
        tvrage: tvrage ?? this.tvrage,
        thetvdb: thetvdb ?? this.thetvdb,
        imdb: imdb ?? this.imdb,
      );

  factory Externals.fromJson(String str) => Externals.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Externals.fromMap(Map<String, dynamic> json) => Externals(
        tvrage: json["tvrage"],
        thetvdb: json["thetvdb"],
        imdb: json["imdb"],
      );

  Map<String, dynamic> toMap() => {
        "tvrage": tvrage,
        "thetvdb": thetvdb,
        "imdb": imdb,
      };
}

class Image {
  final String? medium;
  final String? original;

  Image({
    this.medium,
    this.original,
  });

  Image copyWith({
    String? medium,
    String? original,
  }) =>
      Image(
        medium: medium ?? this.medium,
        original: original ?? this.original,
      );

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        medium: json["medium"],
        original: json["original"],
      );

  Map<String, dynamic> toMap() => {
        "medium": medium,
        "original": original,
      };
}

enum Language { ENGLISH, JAPANESE }

final languageValues =
    EnumValues({"English": Language.ENGLISH, "Japanese": Language.JAPANESE});

class Links {
  final Self? self;
  final Previousepisode? previousepisode;

  Links({
    this.self,
    this.previousepisode,
  });

  Links copyWith({
    Self? self,
    Previousepisode? previousepisode,
  }) =>
      Links(
        self: self ?? this.self,
        previousepisode: previousepisode ?? this.previousepisode,
      );

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        self: json["self"] == null ? null : Self.fromMap(json["self"]),
        previousepisode: json["previousepisode"] == null
            ? null
            : Previousepisode.fromMap(json["previousepisode"]),
      );

  Map<String, dynamic> toMap() => {
        "self": self?.toMap(),
        "previousepisode": previousepisode?.toMap(),
      };
}

class Previousepisode {
  final String? href;
  final String? name;

  Previousepisode({
    this.href,
    this.name,
  });

  Previousepisode copyWith({
    String? href,
    String? name,
  }) =>
      Previousepisode(
        href: href ?? this.href,
        name: name ?? this.name,
      );

  factory Previousepisode.fromJson(String str) =>
      Previousepisode.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Previousepisode.fromMap(Map<String, dynamic> json) => Previousepisode(
        href: json["href"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
        "name": name,
      };
}

class Self {
  final String? href;

  Self({
    this.href,
  });

  Self copyWith({
    String? href,
  }) =>
      Self(
        href: href ?? this.href,
      );

  factory Self.fromJson(String str) => Self.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Self.fromMap(Map<String, dynamic> json) => Self(
        href: json["href"],
      );

  Map<String, dynamic> toMap() => {
        "href": href,
      };
}

class Network {
  final int? id;
  final String? name;
  final Country? country;
  final String? officialSite;

  Network({
    this.id,
    this.name,
    this.country,
    this.officialSite,
  });

  Network copyWith({
    int? id,
    String? name,
    Country? country,
    String? officialSite,
  }) =>
      Network(
        id: id ?? this.id,
        name: name ?? this.name,
        country: country ?? this.country,
        officialSite: officialSite ?? this.officialSite,
      );

  factory Network.fromJson(String str) => Network.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Network.fromMap(Map<String, dynamic> json) => Network(
        id: json["id"],
        name: json["name"],
        country:
            json["country"] == null ? null : Country.fromMap(json["country"]),
        officialSite: json["officialSite"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "country": country?.toMap(),
        "officialSite": officialSite,
      };
}

class Country {
  final String? name;
  final String? code;
  final String? timezone;

  Country({
    this.name,
    this.code,
    this.timezone,
  });

  Country copyWith({
    String? name,
    String? code,
    String? timezone,
  }) =>
      Country(
        name: name ?? this.name,
        code: code ?? this.code,
        timezone: timezone ?? this.timezone,
      );

  factory Country.fromJson(String str) => Country.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Country.fromMap(Map<String, dynamic> json) => Country(
        name: json["name"],
        code: json["code"],
        timezone: json["timezone"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "code": code,
        "timezone": timezone,
      };
}

class Rating {
  final double? average;

  Rating({
    this.average,
  });

  Rating copyWith({
    double? average,
  }) =>
      Rating(
        average: average ?? this.average,
      );

  factory Rating.fromJson(String str) => Rating.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rating.fromMap(Map<String, dynamic> json) => Rating(
        average: json["average"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "average": average,
      };
}

class Schedule {
  final String? time;
  final List<String>? days;

  Schedule({
    this.time,
    this.days,
  });

  Schedule copyWith({
    String? time,
    List<String>? days,
  }) =>
      Schedule(
        time: time ?? this.time,
        days: days ?? this.days,
      );

  factory Schedule.fromJson(String str) => Schedule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Schedule.fromMap(Map<String, dynamic> json) => Schedule(
        time: json["time"],
        days: json["days"] == null
            ? []
            : List<String>.from(json["days"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "time": time,
        "days": days == null ? [] : List<dynamic>.from(days!.map((x) => x)),
      };
}

enum Status { ENDED, IN_DEVELOPMENT, RUNNING }

final statusValues = EnumValues({
  "Ended": Status.ENDED,
  "In Development": Status.IN_DEVELOPMENT,
  "Running": Status.RUNNING
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

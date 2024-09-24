// class Movie {
//   final double score;
//   final Show show;

//   Movie({
//     required this.score,
//     required this.show,
//   });

//   factory Movie.fromJson(Map<String, dynamic> json) {
//     return Movie(
//       score: json['score']?.toDouble() ?? 0.0,
//       show: Show.fromJson(json['show']),
//     );
//   }
// }

// class Show {
//   final int id;
//   final String url;
//   final String name;
//   final String type;
//   final String language;
//   final List<String> genres;
//   final String status;
//   final int? runtime;
//   final int? averageRuntime;
//   final String premiered;
//   final String? ended;
//   final String? officialSite;
//   final Schedule schedule;
//   final Rating rating;
//   final int weight;
//   final Network? network;
//   final WebChannel? webChannel;
//   final Externals externals;
//   final Image? image;
//   final String summary;
//   final Links links;

//   Show({
//     required this.id,
//     required this.url,
//     required this.name,
//     required this.type,
//     required this.language,
//     required this.genres,
//     required this.status,
//     required this.runtime,
//     required this.averageRuntime,
//     required this.premiered,
//     this.ended,
//     this.officialSite,
//     required this.schedule,
//     required this.rating,
//     required this.weight,
//     this.network,
//     this.webChannel,
//     required this.externals,
//     this.image,
//     required this.summary,
//     required this.links,
//   });

//   factory Show.fromJson(Map<String, dynamic> json) {
//     return Show(
//       id: json['id'],
//       url: json['url'],
//       name: json['name'],
//       type: json['type'],
//       language: json['language'],
//       genres: List<String>.from(json['genres']),
//       status: json['status'],
//       runtime: json['runtime'],
//       averageRuntime: json['averageRuntime'],
//       premiered: json['premiered'],
//       ended: json['ended'],
//       officialSite: json['officialSite'],
//       schedule: Schedule.fromJson(json['schedule']),
//       rating: Rating.fromJson(json['rating']),
//       weight: json['weight'],
//       network:
//           json['network'] != null ? Network.fromJson(json['network']) : null,
//       webChannel: json['webChannel'] != null
//           ? WebChannel.fromJson(json['webChannel'])
//           : null,
//       externals: Externals.fromJson(json['externals']),
//       image: json['image'] != null ? Image.fromJson(json['image']) : null,
//       summary: json['summary'],
//       links: Links.fromJson(json['_links']),
//     );
//   }
// }

// class Schedule {
//   final String time;
//   final List<String> days;

//   Schedule({
//     required this.time,
//     required this.days,
//   });

//   factory Schedule.fromJson(Map<String, dynamic> json) {
//     return Schedule(
//       time: json['time'],
//       days: List<String>.from(json['days']),
//     );
//   }
// }

// class Rating {
//   final double? average;

//   Rating({
//     this.average,
//   });

//   factory Rating.fromJson(Map<String, dynamic> json) {
//     return Rating(
//       average: json['average']?.toDouble(),
//     );
//   }
// }

// class Network {
//   final int id;
//   final String name;
//   final Country country;
//   final String? officialSite;

//   Network({
//     required this.id,
//     required this.name,
//     required this.country,
//     this.officialSite,
//   });

//   factory Network.fromJson(Map<String, dynamic> json) {
//     return Network(
//       id: json['id'],
//       name: json['name'],
//       country: Country.fromJson(json['country']),
//       officialSite: json['officialSite'],
//     );
//   }
// }

// class WebChannel {
//   final int id;
//   final String name;
//   final Country? country;
//   final String? officialSite;

//   WebChannel({
//     required this.id,
//     required this.name,
//     this.country,
//     this.officialSite,
//   });

//   factory WebChannel.fromJson(Map<String, dynamic> json) {
//     return WebChannel(
//       id: json['id'],
//       name: json['name'],
//       country:
//           json['country'] != null ? Country.fromJson(json['country']) : null,
//       officialSite: json['officialSite'],
//     );
//   }
// }

// class Country {
//   final String name;
//   final String code;
//   final String timezone;

//   Country({
//     required this.name,
//     required this.code,
//     required this.timezone,
//   });

//   factory Country.fromJson(Map<String, dynamic> json) {
//     return Country(
//       name: json['name'],
//       code: json['code'],
//       timezone: json['timezone'],
//     );
//   }
// }

// class Externals {
//   final int? tvrage;
//   final int? thetvdb;
//   final String? imdb;

//   Externals({
//     this.tvrage,
//     this.thetvdb,
//     this.imdb,
//   });

//   factory Externals.fromJson(Map<String, dynamic> json) {
//     return Externals(
//       tvrage: json['tvrage'],
//       thetvdb: json['thetvdb'],
//       imdb: json['imdb'],
//     );
//   }
// }

// class Image {
//   final String medium;
//   final String original;

//   Image({
//     required this.medium,
//     required this.original,
//   });

//   factory Image.fromJson(Map<String, dynamic> json) {
//     return Image(
//       medium: json['medium'],
//       original: json['original'],
//     );
//   }
// }

// class Links {
//   final Self self;
//   final PreviousEpisode? previousEpisode;

//   Links({
//     required this.self,
//     this.previousEpisode,
//   });

//   factory Links.fromJson(Map<String, dynamic> json) {
//     return Links(
//       self: Self.fromJson(json['self']),
//       previousEpisode: json['previousepisode'] != null
//           ? PreviousEpisode.fromJson(json['previousepisode'])
//           : null,
//     );
//   }
// }

// class Self {
//   final String href;

//   Self({
//     required this.href,
//   });

//   factory Self.fromJson(Map<String, dynamic> json) {
//     return Self(
//       href: json['href'],
//     );
//   }
// }

// class PreviousEpisode {
//   final String href;
//   final String? name;

//   PreviousEpisode({
//     required this.href,
//     this.name,
//   });

//   factory PreviousEpisode.fromJson(Map<String, dynamic> json) {
//     return PreviousEpisode(
//       href: json['href'],
//       name: json['name'],
//     );
//   }
// }

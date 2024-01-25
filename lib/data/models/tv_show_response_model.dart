import 'dart:convert';

class TvShowResponseModel {
  final int page;
  final List<Result> results;
  final int totalPages;
  final int totalResults;

  TvShowResponseModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory TvShowResponseModel.fromJson(String str) =>
      TvShowResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TvShowResponseModel.fromMap(Map<String, dynamic> json) =>
      TvShowResponseModel(
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}

class Result {
  final bool adult;
  final String backdropPath;
  final int id;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final DateTime firstAirDate;
  final String name;
  final double voteAverage;
  final int voteCount;
  final int isWatchlist;

  Result({
    required this.adult,
    required this.backdropPath,
    required this.id,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
    this.isWatchlist = 0,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"] ?? "",
        id: json["id"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        firstAirDate: DateTime.parse(json["first_air_date"]),
        name: json["name"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
        isWatchlist: json["is_watchlist"] ?? 0,
      );

  Map<String, dynamic> toMap() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "id": id,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "first_air_date":
            "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
        "name": name,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "is_watchlist": isWatchlist,
      };
}

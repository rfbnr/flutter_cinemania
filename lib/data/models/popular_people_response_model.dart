import 'dart:convert';

class PopularPeopleResponseModel {
  final int page;
  final List<Result> results;
  final int totalPages;
  final int totalResults;

  PopularPeopleResponseModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PopularPeopleResponseModel.fromJson(String str) =>
      PopularPeopleResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PopularPeopleResponseModel.fromMap(Map<String, dynamic> json) =>
      PopularPeopleResponseModel(
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
  final int gender;
  final int id;
  final String knownForDepartment;
  final String name;
  final String originalName;
  final double popularity;
  final String profilePath;

  Result({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        adult: json["adult"] ?? true,
        gender: json["gender"] ?? 0,
        id: json["id"] ?? 0,
        knownForDepartment: json["known_for_department"] ?? "Unknown",
        name: json["name"] ?? "Unknown",
        originalName: json["original_name"] ?? "Unknown",
        popularity: json["popularity"]?.toDouble() ?? 0.0,
        profilePath: json["profile_path"] ?? "Unknown",
      );

  Map<String, dynamic> toMap() => {
        "adult": adult,
        "gender": gender,
        "id": id,
        "known_for_department": knownForDepartment,
        "name": name,
        "original_name": originalName,
        "popularity": popularity,
        "profile_path": profilePath,
      };
}

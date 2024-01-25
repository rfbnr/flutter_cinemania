class WatchlistResponseModel {
  final int id;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String voteAverage;
  final String voteCount;
  final int isWatchlist;

  WatchlistResponseModel({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
    required this.isWatchlist,
  });

  factory WatchlistResponseModel.fromMap(Map<String, dynamic> json) =>
      WatchlistResponseModel(
        id: json["id"],
        originalTitle: json["originalTitle"],
        overview: json["overview"],
        posterPath: json["posterPath"],
        voteAverage: json["voteAverage"],
        voteCount: json["voteCount"],
        isWatchlist: json["isWatchlist"],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'originalTitle': originalTitle,
      'overview': overview,
      'posterPath': posterPath,
      'voteAverage': voteAverage,
      'voteCount': voteCount,
      'isWatchlist': isWatchlist
    };
  }
}

class Variables {
  static const String apiKey =
      "untuk mendapatkan keys API TMDB https://developers.themoviedb.org/3/getting-started/introduction";

  static const String baseUrl = "https://api.themoviedb.org/3";

  static const String imageBaseUrl = "https://image.tmdb.org/t/p/original";

  static const String searchMovie = "$baseUrl/search/movie";

  static const String popularMovieUrl =
      "$baseUrl/movie/popular?api_key=$apiKey";

  static const String nowPlayingMovieUrl =
      "$baseUrl/movie/now_playing?api_key=$apiKey";

  static const String topRatedTvShowUrl =
      "$baseUrl/tv/top_rated?api_key=$apiKey";

  static const String popularTvShowUrl = "$baseUrl/tv/popular?api_key=$apiKey";

  static const String popularPeopleUrl =
      "$baseUrl/person/popular?api_key=$apiKey";
}

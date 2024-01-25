class Variables {
  static const String apiKey =
      "untuk mendapatkan keys API TMDB https://developers.themoviedb.org/3/getting-started/introduction";

  static const String imageBaseUrl = "https://image.tmdb.org/t/p/original";

  static const String searchMovie = "https://api.themoviedb.org/3/search/movie";

  static const String popularMovieUrl =
      "https://api.themoviedb.org/3/movie/popular?api_key=$apiKey";

  static const String nowPlayingMovieUrl =
      "https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey";

  static const String topRatedTvShowUrl =
      "https://api.themoviedb.org/3/tv/top_rated?api_key=$apiKey";

  static const String popularTvShowUrl =
      "https://api.themoviedb.org/3/tv/popular?api_key=$apiKey";

  static const String popularPeopleUrl =
      "https://api.themoviedb.org/3/person/popular?api_key=$apiKey";
}

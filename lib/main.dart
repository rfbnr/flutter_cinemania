import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants/colors.dart';
import 'data/datasources/movie_remote_datasource.dart';
import 'data/datasources/people_remote_datasource.dart';
import 'data/datasources/tv_show_remote_datasource.dart';
import 'presentation/home/bloc/now_playing_movie/now_playing_movie_bloc.dart';
import 'presentation/home/bloc/popular_movie/popular_movie_bloc.dart';
import 'presentation/home/bloc/popular_people/popular_people_bloc.dart';
import 'presentation/home/bloc/popular_tv_show/popular_tv_show_bloc.dart';
import 'presentation/home/bloc/top_rated_tv_show/top_rated_tv_show_bloc.dart';
import 'presentation/search/bloc/search_input_bloc.dart';
import 'presentation/splash/splash_page.dart';
import 'presentation/watchlist/bloc/watchlist_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PopularMovieBloc(MovieRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => NowPlayingMovieBloc(MovieRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => TopRatedTvShowBloc(TvShowRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => PopularTvShowBloc(TvShowRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => PopularPeopleBloc(PeopleRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => SearchInputBloc(MovieRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => WatchlistBloc(),
        ),
      ],
      child: MaterialApp(
        title: "Cinemania",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          textTheme: GoogleFonts.quicksandTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}

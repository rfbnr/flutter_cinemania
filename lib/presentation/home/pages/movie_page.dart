import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../bloc/now_playing_movie/now_playing_movie_bloc.dart';
import '../bloc/popular_movie/popular_movie_bloc.dart';
import '../widgets/now_playing_movie_card.dart';
import '../widgets/popular_movie_card.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({super.key});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  void initState() {
    super.initState();
    context
        .read<NowPlayingMovieBloc>()
        .add(const NowPlayingMovieEvent.fetchNowPlayingMovie());

    context
        .read<PopularMovieBloc>()
        .add(const PopularMovieEvent.fetchPopularMovie());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 18),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Now Playing Movie",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 323,
                  margin: const EdgeInsets.only(top: 18),
                  child: BlocBuilder<NowPlayingMovieBloc, NowPlayingMovieState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        error: (message) {
                          return Center(
                            child: Text(
                              message,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                              ),
                            ),
                          );
                        },
                        success: (result) {
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: result.length - 10,
                            itemBuilder: (context, index) {
                              return NowPlayingMovieCard(data: result[index]);
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Popular Movie",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  BlocBuilder<PopularMovieBloc, PopularMovieState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        error: (message) {
                          return Center(
                            heightFactor: 5,
                            child: Text(
                              message,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                              ),
                            ),
                          );
                        },
                        success: (result) {
                          return ListView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: result.length - 10,
                            itemBuilder: (context, index) {
                              return PopularMovieCard(data: result[index]);
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

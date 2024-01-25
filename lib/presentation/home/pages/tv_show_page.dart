import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../bloc/popular_tv_show/popular_tv_show_bloc.dart';
import '../bloc/top_rated_tv_show/top_rated_tv_show_bloc.dart';
import '../widgets/popular_tv_show_card.dart';
import '../widgets/top_rated_tv_show_card.dart';

class TvShowPage extends StatefulWidget {
  const TvShowPage({super.key});

  @override
  State<TvShowPage> createState() => _TvShowPageState();
}

class _TvShowPageState extends State<TvShowPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<TopRatedTvShowBloc>()
        .add(const TopRatedTvShowEvent.fetchTopRatedTvShow());

    context
        .read<PopularTvShowBloc>()
        .add(const PopularTvShowEvent.fetchPopularTvShow());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Top Rated Tv Show",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 323,
              margin: const EdgeInsets.only(top: 18),
              child: BlocBuilder<TopRatedTvShowBloc, TopRatedTvShowState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    success: (result) {
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: result.length - 10,
                        itemBuilder: (context, index) {
                          return TopRatedTvShowCard(data: result[index]);
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Popular Tv Show",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  BlocBuilder<PopularTvShowBloc, PopularTvShowState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        success: (result) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 0.55,
                            ),
                            itemCount: result.length - 10,
                            itemBuilder: (context, index) {
                              return PopularTvShowCard(data: result[index]);
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

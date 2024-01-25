import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasources/watchlist_local_datasource.dart';
import '../../../data/models/tv_show_response_model.dart';
import '../../../data/models/watchlist_response_model.dart';
import '../../watchlist/bloc/watchlist_bloc.dart';

class HeaderContentTvShow extends StatefulWidget {
  const HeaderContentTvShow({super.key, required this.data});

  final Result data;

  @override
  State<HeaderContentTvShow> createState() => _HeaderContentTvShowState();
}

class _HeaderContentTvShowState extends State<HeaderContentTvShow> {
  Future<void> addToWatchlist() async {
    final watchlistData = WatchlistResponseModel(
      id: widget.data.id,
      originalTitle: widget.data.originalName,
      overview: widget.data.overview,
      posterPath: widget.data.posterPath,
      voteAverage: widget.data.voteAverage.toString(),
      voteCount: widget.data.voteAverage.toString(),
      isWatchlist: 1,
    );

    final watchlist = await WatchlistLocalDatasource.instance.getAllWatchlist();

    final existingMovie = watchlist.where(
      (movie) => movie.id == widget.data.id,
    );

    if (existingMovie.isEmpty) {
      context.read<WatchlistBloc>().add(
            WatchlistEvent.addToWatchlist(watchlistData),
          );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Film sudah ada di Watchlist",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 18, right: 18),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.data.originalName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              BlocConsumer<WatchlistBloc, WatchlistState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Berhasil Menambahkan ke Watchlist",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          backgroundColor: AppColors.green,
                        ),
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return IconButton(
                    onPressed: () => addToWatchlist(),
                    icon: Icon(
                      widget.data.isWatchlist == 1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 32,
                      color: AppColors.red,
                    ),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const SpaceWidth(6),
                  Text(
                    widget.data.voteAverage.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const SpaceWidth(10),
              Row(
                children: [
                  const Icon(
                    Icons.people_alt_rounded,
                    color: Colors.amber,
                  ),
                  const SpaceWidth(6),
                  Text(
                    widget.data.voteCount.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemania/data/datasources/watchlist_local_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/vaiables.dart';
import '../../../data/models/movie_response_model.dart';
import '../../../data/models/watchlist_response_model.dart';
import '../../watchlist/bloc/watchlist_bloc.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.data});

  final Result data;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Future<void> addToWatchlist() async {
    final watchlistData = WatchlistResponseModel(
      id: widget.data.id,
      originalTitle: widget.data.originalTitle,
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
          content: Text("Film sudah ada di Watchlist"),
          backgroundColor: AppColors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 330,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl:
                          "${Variables.imageBaseUrl}${widget.data.posterPath}",
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        color: AppColors.red,
                        size: 80,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.white,
                      size: 26,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.data.originalTitle,
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
                                        "Berhasil Menambahkan ke Watchlist"),
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
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: const Text(
                      "Overview",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 80),
                    child: Text(
                      widget.data.overview,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/vaiables.dart';
import '../../../data/models/movie_response_model.dart';
import '../../detail/pages/detail_movie_page.dart';

class NowPlayingMovieCard extends StatelessWidget {
  const NowPlayingMovieCard({super.key, required this.data});

  final Result data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailMoviePage(data: data);
          }),
        );
      },
      child: Container(
        width: 200,
        height: 323,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: CachedNetworkImage(
                  imageUrl: "${Variables.imageBaseUrl}${data.posterPath}",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.originalTitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const SpaceWidth(6),
                          Text(
                            data.voteAverage.toString(),
                            style: const TextStyle(
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
                            data.voteCount.toString(),
                            style: const TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
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

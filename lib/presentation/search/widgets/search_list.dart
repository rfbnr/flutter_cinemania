import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/vaiables.dart';
import '../../../data/models/movie_response_model.dart';
import '../../detail/pages/detail_movie_page.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key, required this.data});

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
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 200,
              margin: const EdgeInsets.only(right: 16),
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
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    size: 80,
                    color: AppColors.red,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.originalTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SpaceHeight(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  const SpaceHeight(8),
                  Text(
                    data.overview,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
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

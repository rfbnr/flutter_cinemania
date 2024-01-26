import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';
import '../../../data/models/tv_show_response_model.dart';
import '../widgets/header_content_tv_show.dart';

class DetailTvShowPage extends StatelessWidget {
  const DetailTvShowPage({super.key, required this.data});

  final Result data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 28,
            color: AppColors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              child: CachedNetworkImage(
                imageUrl: "${Variables.imageBaseUrl}${data.posterPath}",
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
          HeaderContentTvShow(data: data),
          const Divider(
            thickness: 0.1,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 18,
              bottom: 80,
              left: 18,
              right: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Overview",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    data.overview,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

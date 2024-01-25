import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../bloc/watchlist_bloc.dart';
import '../widgets/watchlist_card.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  void initState() {
    super.initState();
    context.read<WatchlistBloc>().add(const WatchlistEvent.getAllWatchlist());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Watch List",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 28,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: AppColors.red,
                    ),
                    onPressed: () {
                      context
                          .read<WatchlistBloc>()
                          .add(const WatchlistEvent.clearWatchlist());
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              child: BlocBuilder<WatchlistBloc, WatchlistState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    success: (result) {
                      if (result.isEmpty) {
                        return const Center(
                          child: Text(
                            "Belum ada daftar watchlist",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                            ),
                          ),
                        );
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: result.length,
                          itemBuilder: (context, index) {
                            return WatchlistCard(data: result[index]);
                          },
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

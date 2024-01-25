import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../../data/datasources/watchlist_local_datasource.dart';
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

  Future<void> _deleteAllWatchlist() async {
    final watchlist = await WatchlistLocalDatasource.instance.getAllWatchlist();

    if (watchlist.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Tidak ada daftar watchlist",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColors.red,
        ),
      );
    } else {
      _showDialogDelete();
    }
  }

  Future<void> _showDialogDelete() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.black,
          title: const Text(
            "Watchlist",
            style: TextStyle(color: AppColors.white),
          ),
          content: const Text(
            "Yakin ingin menghapus semua daftar watchlist?",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, "Tidak"),
              child: const Text(
                "Tidak",
                style: TextStyle(color: AppColors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                context
                    .read<WatchlistBloc>()
                    .add(const WatchlistEvent.clearWatchlist());

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Berhasil menghapus semua watchlist",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: AppColors.green,
                  ),
                );

                Navigator.pop(context, "Hapus");
              },
              child: const Text(
                "Hapus",
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
        );
      },
    );
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
                    onPressed: () => _deleteAllWatchlist(),
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
                            "Tidak ada daftar watchlist",
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

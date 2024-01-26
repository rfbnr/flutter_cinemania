import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/search_input.dart';
import '../../../core/constants/colors.dart';
import '../bloc/search_input_bloc.dart';
import '../widgets/search_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final FocusNode _searchFocusNode = FocusNode();
  final _searchController = TextEditingController();

  void _onSubmitSearch(String search) {
    context.read<SearchInputBloc>().add(SearchInputEvent.searchMovie(search));

    _searchController.clear();
    _searchFocusNode.unfocus();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Search Movie",
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
                          .read<SearchInputBloc>()
                          .add(const SearchInputEvent.clearSearch());
                    },
                  ),
                ],
              ),
            ),
            SearchInput(
              controller: _searchController,
              focusNode: _searchFocusNode,
              onFieldSubmitted: (value) => _onSubmitSearch(value),
              onPressed: () => _onSubmitSearch(_searchController.text),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              child: BlocBuilder<SearchInputBloc, SearchInputState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: Text(
                          "Belum ada pencariaan",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
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
                      if (result.isEmpty) {
                        return const Center(
                          child: Text(
                            "Movie yang kamu cari tidak tersedia...",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.white,
                            ),
                          ),
                        );
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: result.length,
                          itemBuilder: (context, index) {
                            return SearchList(data: result[index]);
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

import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import 'movie_page.dart';
import 'people_page.dart';
import 'tv_show_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  final List<Widget> selectedTabbarView = [
    const MoviePage(),
    const TvShowPage(),
    const PeoplePage(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 20),
              child: const Text(
                "Cinemania",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TabBar(
                physics: const BouncingScrollPhysics(),
                dividerHeight: 0.0,
                controller: tabController,
                unselectedLabelColor: AppColors.white,
                labelColor: AppColors.primary,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: const TextStyle(fontSize: 16),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.primary.withOpacity(0.2),
                ),
                tabs: const [
                  Tab(text: "Movies"),
                  Tab(text: "Tv Shows"),
                  Tab(text: "Peoples"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: selectedTabbarView,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

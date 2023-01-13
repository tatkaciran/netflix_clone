import 'package:flutter/material.dart';

import 'home_view.dart';
import 'src/pages/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = [
      SearchPage(),
      MoviesPage(),
      TVShowsPage(),
      MyListPage(),
      TrailersPage(),
    ];

    return const HomeView(pages: pages);
  }
}

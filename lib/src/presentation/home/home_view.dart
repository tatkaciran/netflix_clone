import 'package:flutter/material.dart';

import 'src/widgets/widgets.dart';

class HomeView extends StatefulWidget {
  final List<Widget> pages;
  const HomeView({super.key, required this.pages});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  static const int initialIndex = 1;
  TabController? tabController;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: widget.pages.length,
      vsync: this,
      initialIndex: initialIndex,
    );
    pageController = PageController(initialPage: initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePages(
            pages: widget.pages,
            tabController: tabController,
            pageController: pageController,
          ),
          HomeAppBar(
            tabController: tabController,
            onTap: (index) {
              pageController?.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.bounceInOut,
              );
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class HomePages extends StatelessWidget {
  final PageController? pageController;
  final TabController? tabController;
  final List<Widget> pages;
  const HomePages({
    required this.pages,
    Key? key,
    this.tabController,
    this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        tabController?.animateTo(value);
      },
      controller: pageController,
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return Center(
          child: pages[index],
        );
      },
    );
  }
}

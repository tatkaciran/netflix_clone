import 'package:flutter/material.dart';

import 'src/widgets/widgets.dart';

class NetflixView extends StatefulWidget {
  final List<Widget> pages;

  const NetflixView({super.key, required this.pages});

  @override
  State<NetflixView> createState() => _NetflixViewState();
}

class _NetflixViewState extends State<NetflixView> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: widget.pages.length,
        itemBuilder: (context, index) {
          return widget.pages[index];
        },
      ),
      bottomNavigationBar: UIBottomBar(
        onTap: (index) => setState(() {
          _pageController?.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
          );
          _currentIndex = index;
        }),
        currentIndex: _currentIndex,
        bottomBarItemDatas: BottomBarItemData.list,
      ),
    );
  }
}

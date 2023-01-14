import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constants/ui_size.dart';
import 'package:netflix_clone/src/presentation/home/src/constants/constants.dart';

class HomeAppBar extends StatelessWidget {
  final TabController? tabController;
  final void Function(int index)? onTap;
  const HomeAppBar({
    this.tabController,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: UISize.appHorizontalPadding),
          child: SizedBox(
            height: UISize.topBarHeight(context),
            width: double.infinity,
            child: TabBar(
              onTap: onTap,
              isScrollable: true,
              controller: tabController,
              indicatorColor: Colors.transparent,
              tabs: const [
                Tab(icon: Icon(CupertinoIcons.search)),
                Tab(text: HomeText.movies),
                Tab(text: HomeText.tvShows),
                Tab(text: HomeText.myList),
                Tab(text: HomeText.trailers),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

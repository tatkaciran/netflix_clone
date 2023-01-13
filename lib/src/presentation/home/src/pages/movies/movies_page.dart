import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constants/constants.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';

import 'src/widgets/widgets.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(child: SizedBox(height: UISize.topBarHeight(context))),
            const HomeHeader(),
            const Section(),
            const Section(),
            const Section(),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String? label;
  const Section({
    Key? key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: UISize.appHorizontalPadding,
        vertical: UISize.appHorizontalPadding * 0.5,
      ),
      child: SizedBox(
        width: double.infinity,
        height: context.height40 * 0.85,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label ?? UIText.section),
                const Text(UIText.seeAll),
              ],
            ),
            Expanded(
              child: ListView.builder(
                clipBehavior: Clip.none,
                cacheExtent: 500,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: UISize.appHorizontalPadding * 0.7,
                      bottom: UISize.appHorizontalPadding * 0.7,
                      right: UISize.appHorizontalPadding * 0.3,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: context.height20 * 0.9,
                          width: context.width30 * 1.15,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                UISize.borderRadiusSmall,
                              ),
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        Text("Movie Title"),
                        Text("Movie Subtitle"),
                        Text("*****"),
                      ],
                    ),
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

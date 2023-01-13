import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constants/constants.dart';
import 'package:netflix_clone/src/extensions/extensions.dart';
import 'package:netflix_clone/src/presentation/home/src/widgets/play_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height40 * 0.70,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: UISize.appHorizontalPadding,
              vertical: UISize.appHorizontalPadding * 0.5,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(UISize.borderRadiusSmall),
                ),
                color: Colors.purple,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 55,
            child: PlayButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

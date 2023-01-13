import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constants/ui_color.dart';
import 'package:netflix_clone/src/constants/ui_size.dart';
import 'package:netflix_clone/src/constants/ui_text.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class UIBottomBar extends SalomonBottomBar {
  UIBottomBar({
    int? currentIndex,
    super.key,
    super.onTap,
    required List<BottomBarItemData> bottomBarItemDatas,
  }) : super(
          margin: const EdgeInsets.symmetric(
            horizontal: UISize.appHorizontalPadding,
            vertical: UISize.fixedSmall,
          ),
          selectedColorOpacity: 0.06,
          selectedItemColor: UIColor.buttonColor,
          unselectedItemColor: UIColor.bottomBarUnselectedColor,
          itemPadding: const EdgeInsets.symmetric(
            horizontal: UISize.fixedMedium,
            vertical: UISize.fixedSmall,
          ),
          items: BottomBarItemData.list
              .map(
                (item) => SalomonBottomBarItem(
                  icon: Icon(item.icon),
                  title: Text(item.title),
                ),
              )
              .toList(),
          currentIndex: currentIndex ?? 0,
        );
}

class BottomBarItemData {
  final String title;
  final IconData icon;

  const BottomBarItemData({
    required this.title,
    required this.icon,
  });

  static const List<BottomBarItemData> list = <BottomBarItemData>[
    BottomBarItemData(
      title: UIText.home,
      icon: Icons.home_outlined,
    ),
    BottomBarItemData(
      title: UIText.watchNow,
      icon: Icons.tv_rounded,
    ),
    BottomBarItemData(
      title: UIText.messages,
      icon: Icons.messenger_outline_outlined,
    ),
    BottomBarItemData(
      title: UIText.profile,
      icon: Icons.person_outline_rounded,
    ),
  ];
}

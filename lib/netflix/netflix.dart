import 'package:flutter/material.dart';

import '../src/presentation/chat/chat_page.dart';
import '../src/presentation/home/home_page.dart';
import '../src/presentation/profile/profile_page.dart';
import '../src/presentation/watch_now/watch_now_page.dart';
import 'netflix_view.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = [
      HomePage(),
      WatchNowPage(),
      MessagesPage(),
      ProfilePage(),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          // scaffoldBackgroundColor: UIColor.backgroundColor,
          scaffoldBackgroundColor: Colors.black),
      home: const NetflixView(
        pages: pages,
      ),
    );
  }
}

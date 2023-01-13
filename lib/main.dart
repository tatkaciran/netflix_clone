import 'dart:async';
import 'package:logging/logging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/netflix/netflix.dart';

void main() {
  runZonedGuarded(
    () {
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen((rec) {
        // print('${rec.level.name}: ${rec.time}: ${rec.message}');
      });
      runApp(const Netflix());
    },
    (error, stack) {
      if (kDebugMode) {
        print(
          '''
================================================================================
error: $error
stack: $stack
================================================================================
''',
        );
      }
    },
  );
}

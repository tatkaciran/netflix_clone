// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

extension BuildContextX on BuildContext {
  get height => MediaQuery.of(this).size.height;
  get width => MediaQuery.of(this).size.width;
  double getPercent(double value, double percent) => (value * 0.01) * percent;
  double getHeightPercent(double percent) => getPercent(height, percent);
  double getWidthPercent(double percent) => getPercent(width, percent);
  get height10 => getHeightPercent(10);
  get width10 => getWidthPercent(10);
  get height20 => getHeightPercent(20);
  get width20 => getWidthPercent(20);
  get height30 => getHeightPercent(30);
  get width30 => getWidthPercent(30);
  get height40 => getHeightPercent(40);
  get width40 => getWidthPercent(40);
  get height50 => getHeightPercent(50);
  get width50 => getWidthPercent(50);
  get height60 => getHeightPercent(60);
  get width60 => getWidthPercent(60);
  get height70 => getHeightPercent(70);
  get width70 => getWidthPercent(70);
  get height80 => getHeightPercent(80);
  get width80 => getWidthPercent(80);
  get height90 => getHeightPercent(90);
  get width90 => getWidthPercent(90);
}

extension StringX on String {
  String get asImageURL => "https://image.tmdb.org/t/p/w500$this";
  String get asOriginalImageURL => "https://image.tmdb.org/t/p/original$this";
}

extension ObjectX on Object {
  /// it's prints when applied on object
  void get println => print("$this");
}

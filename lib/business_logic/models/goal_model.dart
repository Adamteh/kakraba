import 'package:flutter/material.dart';

class GoalModel {
  final String? image;
  final String? title;
  final double? target;
  final double? achieved;
  final int? percentage;

  GoalModel(
      {this.image,
      @required this.title,
      @required this.target,
      @required this.achieved,
      @required this.percentage});
}

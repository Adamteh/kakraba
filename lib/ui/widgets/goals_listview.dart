import 'package:adam_nsiah_portfolio/projects/kakraba/lib/business_logic/models/goal_model.dart';
import 'package:flutter/material.dart';

import 'goals_card.dart';

class GoalsListView extends StatelessWidget {
  final List<GoalModel>? goals;

  const GoalsListView({Key? key, required this.goals}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: goals!.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Column(
            children: [
              GoalsGard(
                title: goals![index].title!,
                target: goals![index].target!.toDouble(),
                achieved: goals![index].achieved!.toDouble(),
                percentage: goals![index].percentage!,
                image: goals![index].image,
              ),
              const SizedBox(height: 12),
            ],
          );
        });
  }
}

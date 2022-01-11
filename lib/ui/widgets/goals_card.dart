import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../views/goal_details.dart';
import '../constants.dart';

class GoalsGard extends StatelessWidget {
  final String? image;
  final String? title;
  final double? target;
  final double? achieved;
  final int? percentage;

  const GoalsGard(
      {Key? key,
      this.image,
      required this.title,
      required this.target,
      required this.achieved,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? imageAsset = 'assets/kakraba/images/ballon.png';
    String? cardImage() {
      if (title!.contains('Home') ||
          title!.contains('home') ||
          title!.contains('house') ||
          title!.contains('House')) {
        imageAsset = 'assets/kakraba/images/minihouse.png';
      } else if (title!.contains('Ride') ||
          title!.contains('ride') ||
          title!.contains('A New Car')) {
        imageAsset = 'assets/kakraba/images/car.png';
      }
      return imageAsset!;
    }

    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(14.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.0),
        splashColor: Theme.of(context).primaryColor,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const GoalDetails()));
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            // color: const Color(0xffffffff),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Image
              Flexible(
                flex: 50,
                child: Container(
                  width: 63,
                  height: 53,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9B4B4),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(cardImage()!),
                    ),
                  ),
                ),
              ),
              const Flexible(child: SizedBox(width: 16)),
              //Amount/Target
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(fontSize: 15),
                  ),
                  // SizedBox(height: 5),
                  Text(
                    'Target: $kGhanaCedi $target',
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
              const Flexible(child: SizedBox(width: 29)),

              //To still space out evenly if achieved(i.e no achieved amount)
              percentage == 100 ? Container(width: 45) : Container(),

              //Status
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: percentage == 100
                              ? const Color(0xFF6BD484)
                              : const Color(0xFFFFDD00),
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        percentage == 100 ? 'Achieved' : 'In Progress',
                        style: const TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                  //SizedBox(height: 16),
                  percentage == 100
                      ? Container()
                      : Text(
                          'Achieved: $kGhanaCedi $achieved',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 8),
                        )
                ],
              ),
              const Flexible(child: SizedBox(width: 5)),

              Center(
                child: CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 3.5,
                  percent: percentage! / 100,
                  center: Text("$percentage%"),
                  progressColor: percentage == 100
                      ? Colors.green
                      : const Color(0xFFFF0000),
                  backgroundColor: const Color(0xFFF9CFCF),
                ),
              ),
              const Flexible(child: SizedBox(width: 2))
            ],
          ),
        ),
      ),
    );
  }
}

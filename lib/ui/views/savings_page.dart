import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../business_logic/models/goal_model.dart';
import '../widgets/addgoal_buttomsheet.dart';
import '../widgets/appbar_gradient.dart';

import '../widgets/goals_listview.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({Key? key}) : super(key: key);

  @override
  _SavingsPageState createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  BorderRadius tabndicatorRadius = const BorderRadius.only(
      topLeft: Radius.circular(8), bottomLeft: Radius.circular(8));

  DateTime? pickedDate;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    pickedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    _tabController!.addListener(() {
      setState(() {
        if (_tabController!.index == 0) {
          tabndicatorRadius = const BorderRadius.only(
              topLeft: Radius.circular(8), bottomLeft: Radius.circular(8));
        } else if (_tabController!.index == 3) {
          tabndicatorRadius = const BorderRadius.only(
              topRight: Radius.circular(8), bottomRight: Radius.circular(8));
        } else {
          tabndicatorRadius = BorderRadius.circular(0);
        }
      });
    });
    return DefaultTabController(
      length: 4,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    const Text(
                      'Savings',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'Verdana',
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                flexibleSpace: appBarGradient()),
            body: Container(
              height: kIsWeb ? 700 : (MediaQuery.of(context).size.height - 190),
              padding: const EdgeInsets.only(left: 34, top: 26, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        'GHS 12,600.00',
                        style:
                            TextStyle(fontSize: 26, color: Color(0xFF135203)),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Total Interest Earned',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        'GHS 200.00',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF135203)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Text(
                    'My Goals',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Select a goal to Deposit, Withdraw or Edit',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildGoalsTab(),
                  const SizedBox(height: 20),
                  _buildGoals(),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              backgroundColor: Colors.black,
              tooltip: 'Set New Goal',
              onPressed: () => addGoalButtomSheet(context),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGoals() {
    //will remove from UI later
    List<GoalModel> goals = [];

    goals.add(GoalModel(
        title: 'A New Home', target: 40000, achieved: 5000, percentage: 20));
    goals.add(GoalModel(
        title: 'Party Gift Card', target: 200, achieved: 200, percentage: 100));
    goals.add(GoalModel(
        title: 'A New Car', target: 80000, achieved: 10000, percentage: 10));
    goals.add(GoalModel(
        title: 'A New Home', target: 40000, achieved: 5000, percentage: 10));
    goals.add(GoalModel(
        title: 'Party Gift Card', target: 200, achieved: 100, percentage: 20));
    goals.add(GoalModel(
        title: 'A New Car', target: 80000, achieved: 80000, percentage: 100));
    goals.add(GoalModel(
        title: 'A New Home', target: 40000, achieved: 40000, percentage: 100));
    goals.add(GoalModel(
        title: 'Party Gift Card', target: 200, achieved: 70, percentage: 10));
    goals.add(GoalModel(
        title: 'A New Car', target: 80000, achieved: 10000, percentage: 20));

    List<GoalModel>? goalsAchieved = goals.where((i) {
      return i.achieved == i.target;
    }).toList();
    List<GoalModel>? goalsInProgress = goals.where((i) {
      return i.achieved != i.target;
    }).toList();

    return Expanded(
      child: TabBarView(controller: _tabController, children: [
        GoalsListView(goals: goals),
        GoalsListView(goals: goalsInProgress),
        GoalsListView(goals: goalsAchieved),
        const GoalsListView(goals: []),
      ]),
    );
  }

  ///Goals Tab
  Widget _buildGoalsTab() {
    return Stack(
      children: [
        Container(
          height: 32.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 0.8, color: const Color(0xff707070)),
          ),
          child: TabBar(
              controller: _tabController,
              isScrollable: true,
              unselectedLabelColor: const Color(0xff000000),
              indicator: BoxDecoration(
                  border:
                      Border.all(width: 5.0, color: const Color(0xff6d2bbe)),
                  color: const Color(0xff6d2bbe),
                  borderRadius: tabndicatorRadius),
              tabs: const [
                Tab(
                  child: Text("All"),
                ),
                Tab(
                  text: 'In Progress',
                ),
                Tab(
                  child: Text("Achieved"),
                ),
                Tab(
                  child: Text("Overdue"),
                ),
              ]),
        ),
        // Positioned(
        //   left: 51,
        //   child: Container(
        //     color: const Color(0xff707070),
        //     width: 1,
        //     height: 32,
        //   ),
        // ),
        // Positioned(
        //   left: 162,
        //   child: Container(
        //     color: const Color(0xff707070),
        //     width: 1,
        //     height: 32,
        //   ),
        // ),
        // Positioned(
        //   left: 258,
        //   child: Container(
        //     color: const Color(0xff707070),
        //     width: 1,
        //     height: 32,
        //   ),
        // ),
      ],
    );
  }
}

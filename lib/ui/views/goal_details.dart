import 'package:flutter/material.dart';

import '../widgets/appbar_gradient.dart';
import '../widgets/custom_card.dart';
import '../widgets/actions_listtile.dart';

import '../constants.dart';
import 'topup_page.dart';
import 'withhdraw_page.dart';

class GoalDetails extends StatelessWidget {
  const GoalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 10),
              const Text(
                'Goal',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextButton.icon(
                  label: const Text(
                    'Edit',
                    style: TextStyle(
                        fontFamily: 'Verdana',
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ))
            ],
          ),
          flexibleSpace: appBarGradient()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 414,
              height: 300,
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.asset(
                    'assets/kakraba/images/background_image.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    height: 300,
                  ),
                  // const BackGround(
                  //   height: 350,
                  // ),
                  Positioned(
                    top: 35,
                    left: 24,
                    right: 23,
                    child: Container(
                      width: 365.0,
                      height: 57.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.0),
                        color: const Color(0x33ffffff),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Balance',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          Text(
                            '$kGhanaCedi 8,600.00',
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                          Icon(Icons.info_outline, color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 125,
                    left: 24,
                    right: 23,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Your Interest',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          '$kGhanaCedi 900.00',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 195,
                    left: 17,
                    child: CustomCard(
                      text: 'Total Deposited',
                      amount: '8,300.00',
                      buttonText: 'Deposit',
                      buttonColor: const Color(0xFFCC1C9A),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const TopUpPage(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 195,
                    right: 15,
                    child: CustomCard(
                      text: 'Total Withdrawn',
                      amount: '300.00',
                      buttonText: 'Withdraw',
                      buttonColor: const Color(0xFF2C0220),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const WithDrawPage(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 26.0, left: 17.0),
              child: Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 2.0, left: 22.0, right: 40.0),
              child: ActionsListTile(
                title: 'Withdraw',
                subTitle: 'Today at 12:00PM',
                amount: '$kGhanaCedi 20.00',
                status: 'Completed',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 2.0, left: 22.0, right: 40.0),
              child: ActionsListTile(
                title: 'Deposit',
                subTitle: 'Today at 12:00PM',
                amount: '$kGhanaCedi 1245.24',
                status: 'Pending',
              ),
            ),
            const SizedBox(height: 10.0),
            const Center(
              child: Text(
                'View All Transactions',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 14,
                  color: Color(0xffe61ead),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

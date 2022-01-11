import 'package:flutter/material.dart';

import 'chatbot/chatbot_page.dart';
import 'savings_page.dart';
import 'groupsave_page.dart';
import '../constants.dart';
import '../widgets/appbar_gradient.dart';
import '../widgets/image_slider.dart';
import '../widgets/logo.dart';
import '../widgets/actions_listtile.dart';
import '../widgets/piggy_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(),
              // Profile Image
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: CircleAvatar(
                  radius: 25,
                  // Todo: Must be changes to NetworkImage later
                  backgroundImage:
                      AssetImage('assets/kakraba/images/profile_image.jpg'),
                ),
              ),
              RotatedBox(
                  quarterTurns: 2,
                  child: IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.menu_open_sharp),
                    onPressed: null,
                  )),
              // Menu(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SettingsPage())))
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
                  // BackGround(
                  //   height: 290.82,
                  // ),
                  // Image Slider
                  const Positioned(
                    top: 80,
                    left: 22,
                    child: ImageSlider(),
                  ),

                  const Positioned(
                    top: 26,
                    left: 130,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffffffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Welcome, ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: "Adam",
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            //Products
            const Padding(
              padding: EdgeInsets.only(left: 32.0, top: 33.0),
              child: Text(
                'Products',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //piggy buttons
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PiggyButton(
                    title: 'Savings >',
                    amount: 'GHS 8,900.00',
                    color: const Color(0xFFFFCCE4),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SavingsPage())),
                  ),
                  PiggyButton(
                    title: 'Group Save >',
                    amount: 'GHS 8,900.00',
                    color: const Color(0xff6BD484),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const GroupSavePage())),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Center(
                child: PiggyButton(
                  title: 'Budget >',
                  color: const Color(0xFF57B5FD),
                  onPressed: () {},
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 38.0, left: 22.0),
              child: Text(
                'Operations',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 2.0, left: 22.0),
              child: ActionsListTile(
                  title: 'Lunch time',
                  subTitle: 'Today at 12:00PM',
                  amount: "- $kGhanaCedi 20.00"),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 2.0, left: 22.0),
              child: ActionsListTile(
                  title: 'Freelance work',
                  subTitle: 'Today at 12:00PM',
                  amount: '+ $kGhanaCedi 1245.24'),
            ),
            const SizedBox(height: 10.0),
            const Center(
              child: Text(
                'View All Operations',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 14,
                  color: Color(0xffe61ead),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 13.0),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        child: Image.asset(
          'assets/kakraba/chatbot/bot.gif',
          scale: 4.5,
        ),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const ChatBotPage())),
      ),
    );
  }
}

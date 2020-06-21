import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgets/all_text.dart';
import 'package:resume/widgets/contact_info.dart';
import 'package:resume/widgets/rating.dart';

class MoreInfo extends StatefulWidget {
  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          tabs: const [
            Tab(text: 'ABOUT ME'),
            Tab(text: 'SKILLS'),
          ],
          controller: tabController,
        ),
        Expanded(
          child: ExtendedTabBarView(
            controller: tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(aboutMe),
                    const SizedBox(height: 15),
                    const ContactInfo(
                      icon: Icons.location_on,
                      text: "Panchkula, Haryana, 134109",
                    ),
                    const ContactInfo(
                      icon: Icons.phone,
                      text: "9988363361",
                    ),
                    const ContactInfo(
                      icon: Icons.mail,
                      text: "chaudharydishant.09@gmail.com",
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  Rating(skill: 'Flutter', step: 5),
                  Rating(skill: 'Firebase', step: 4),
                  Rating(skill: 'Database Management', step: 4),
                  Rating(skill: 'API Handling', step: 4),
                  Rating(skill: 'Programming(C, JS, Core Java)', step: 4),
                  Rating(skill: 'HTML', step: 4),
                  Rating(skill: 'UI/UX Designing', step: 3),
                  Rating(skill: 'CSS', step: 3),
                  Rating(skill: 'Bootstrap', step: 3),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

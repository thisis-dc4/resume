import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          indicatorColor: Colors.yellow,
          labelColor: Colors.purple,
          tabs: const [
            Tab(text: 'ABOUT ME'),
            Tab(text: 'SKILLS'),
          ],
          labelPadding: const EdgeInsets.all(8.0),
          indicatorSize: TabBarIndicatorSize.label,
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
                    Text(
                      aboutMe,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 15),
                    const ContactInfo(
                      icon: FontAwesomeIcons.locationArrow,
                      text: "Panchkula, Haryana, 134109",
                    ),
                    const ContactInfo(
                      icon: FontAwesomeIcons.phoneSquareAlt,
                      text: "9988363361",
                    ),
                    const ContactInfo(
                      icon: FontAwesomeIcons.envelopeSquare,
                      text: "chaudharydishant.09@gmail.com",
                    ),
                    const ContactInfo(
                      icon: FontAwesomeIcons.githubSquare,
                      text: "github.com/thisis-dc4",
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  Rating(skill: 'Flutter', toValue: 100),
                  Rating(skill: 'Firebase', toValue: 80),
                  Rating(skill: 'Database Management', toValue: 80),
                  Rating(skill: 'API Handling', toValue: 80),
                  Rating(skill: 'Programming(C, JS, Core Java)', toValue: 80),
                  Rating(skill: 'HTML', toValue: 80),
                  Rating(skill: 'UI/UX Designing', toValue: 70),
                  Rating(skill: 'CSS', toValue: 60),
                  Rating(skill: 'Bootstrap', toValue: 60),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

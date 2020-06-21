import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:resume/widgets/all_text.dart';

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
          tabs: [
            Tab(text: 'ABOUT ME'),
            Tab(text: 'SKILLS'),
          ],
          controller: tabController,
        ),
        Expanded(
          child: ExtendedTabBarView(
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(about_me),
              ),
              Column(
                children: [
                  
                ],
              )
            ],
            controller: tabController,
          ),
        ),
      ],
    );
  }
}

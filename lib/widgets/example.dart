import 'package:flutter/material.dart';
import 'package:extended_tabs/extended_tabs.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extended Tabs Demo',
      theme: ThemeData(
        
        
        
        
        
        
        
        
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ExtendedTabs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  
  

  
  
  
  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController tabController;
  TabController tabController1;
  TabController tabController2;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController1 = TabController(length: 3, vsync: this);
    tabController2 = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          ButtonTheme(
            minWidth: 0.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: FlatButton(
              child: Text(
                'Github',
                style: TextStyle(
                  decorationStyle: TextDecorationStyle.solid,
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                // launch('https://github.com/fluttercandies/extended_tabs');
              },
            ),
          ),
          ButtonTheme(
            padding: EdgeInsets.only(right: 10.0),
            minWidth: 0.0,
            child: FlatButton(
              child:
                  Image.network('https://pub.idqqimg.com/wpa/images/group.png'),
              onPressed: () {
                // launch('https://jq.qq.com/?_wv=1027&k=5bcc0gy');
              },
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            indicator: ColorTabIndicator(Colors.blue),
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Tab0"),
              Tab(text: "Tab1"),
            ],
            controller: tabController,
          ),
          Expanded(
            child: ExtendedTabBarView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TabBar(
                      indicator: ColorTabIndicator(Colors.red),
                      labelColor: Colors.black,
                      tabs: [
                        Tab(text: "Tab00"),
                        Tab(text: "Tab01"),
                        Tab(text: "Tab02"),
                      ],
                      controller: tabController1,
                    ),
                    Expanded(
                      child: ExtendedTabBarView(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              TabBar(
                                indicator: ColorTabIndicator(Colors.green),
                                labelColor: Colors.black,
                                tabs: [
                                  Tab(text: "Tab000"),
                                  Tab(text: "Tab001"),
                                  Tab(text: "Tab002"),
                                  Tab(text: "Tab003"),
                                ],
                                controller: tabController2,
                              ),
                              Expanded(
                                child: ExtendedTabBarView(
                                  children: <Widget>[
                                    List("Tab000"),
                                    List("Tab001"),
                                    List("Tab002"),
                                    List("Tab003"),
                                  ],
                                  controller: tabController2,

                                  ///if linkedParentTabBarView is true and current tabbarview over scroll,
                                  ///it will check whether ancestor tabbarView can be scroll
                                  ///then scroll ancestor tabbarView
                                  linkWithAncestor: true,

                                  /// cache page count
                                  /// default is 0.
                                  /// if cacheExtent is 1, it has two pages in cache
                                  /// null is infinity, it will cache all pages
                                  cacheExtent: 1,
                                ),
                              )
                            ],
                          ),
                          List("Tab01"),
                          List("Tab02"),
                        ],
                        controller: tabController1,
                      ),
                    )
                  ],
                ),
                List("Tab1")
              ],
              controller: tabController,
            ),
          )
        ],
      ),
    );
  }
}

class List extends StatelessWidget {
  final String tabKey;
  List(this.tabKey);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (c, i) {
          return Container(
            //decoration: BoxDecoration(border: Border.all(color: Colors.orange,width: 1.0)),
            alignment: Alignment.center,
            height: 60.0,
            child: Text("$tabKey : List$i"),
          );
        },
        itemCount: 100);
  }
}

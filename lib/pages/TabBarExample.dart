import 'package:flutter/material.dart';

import '../Navigation/Page1.dart';
import '../Navigation/Page2.dart';
import '../Navigation/Page3.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length : 3,vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Demo"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tab 1',icon: Icon(Icons.add),),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Page1(),
          Page2(name: "Ameya",),
          Page3(),
        ],
      ),
    );
  }
}

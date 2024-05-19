import 'package:bruhmius/components/my_current_location.dart';
import 'package:bruhmius/components/my_description_box.dart';
import 'package:bruhmius/components/my_drawer.dart';
import 'package:bruhmius/components/my_sliver_app_bar.dart';
import 'package:bruhmius/components/my_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      //   backgroundColor: Theme.of(context).colorScheme.background,
      // ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxisScrolled) {
            return [
              MySliverAppBar(
                title: MyTabBar(
                  tabController: _tabController,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary),

                    // my current Location
                    const MyCurrentLocation(),
                    // description box
                    const MyDescriptionBox()
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("first tab items"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("second tab items"),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("third tab items"),
              ),
            ],
          )),
    );
  }
}

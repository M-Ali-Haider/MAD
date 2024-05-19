import 'package:bruhmius/components/my_drawer.dart';
import 'package:bruhmius/components/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      //   backgroundColor: Theme.of(context).colorScheme.background,
      // ),
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxisScrolled) {
            return [
              const MySliverAppBar(
                title: Text('tilte'),
                child: Text('Hello'),
              )
            ];
          },
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}

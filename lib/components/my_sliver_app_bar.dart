import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: title,
      pinned: true,
      expandedHeight: 340.0,
      collapsedHeight: 120,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ))
      ],
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}

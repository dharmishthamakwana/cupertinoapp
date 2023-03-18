import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../product_1/provider/product1_provider.dart';

class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {

  p1_provider? p1False,p1True;
  @override
  Widget build(BuildContext context) {

    p1False = Provider.of<p1_provider>(context,listen: false);
    p1True = Provider.of<p1_provider>(context,listen: true);
    return SafeArea(
        child: CupertinoTabScaffold(
          tabBar:  CupertinoTabBar(
            height: 70,
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return Center(
              child: p1True!.Screens[index],
            );
          },
        )
    );
  }
}
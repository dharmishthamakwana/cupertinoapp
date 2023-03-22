
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';
// import 'package:flutter/material.dart';

class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {

  product1_provider? hf,ht;
  @override
  Widget build(BuildContext context) {

    hf = Provider.of<product1_provider>(context,listen: false);
    ht = Provider.of<product1_provider>(context,listen: true);
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
              child: ht!.Screens[index],
            );
          },
        )
    );
  }
}
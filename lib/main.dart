import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'home/screen/product_1/provider/product1_provider.dart';
import 'home/screen/product_1/view/product1_screen.dart';
import 'home/screen/tab_bar/view/tabbar_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => p1_provider(),
        )
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/':(p0) => tabbar_screen(),
          'p1': (p0) => product1_screen(),
        },
      ),
    ),
  );
}

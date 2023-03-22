
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'home/screen/product1/provider/product_provider.dart';
import 'home/screen/product1/view/product2_screen.dart';
import 'home/screen/product1/view/product_screen.dart';
import 'home/screen/product1/view/sopping_screen.dart';
import 'home/screen/product1/view/tab_barr_Screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => product1_provider(),)
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '3',
        routes: {
          '/':(p0) => tabbar_screen(),
          '1':(p0) => product1_screen(),
          '2':(p0) => product2_screen(),
          '3':(p0) => shopping_screen(),

        },
      ),
    ),
  );
}

import 'package:flutter/cupertino.dart';

import '../view/product2_screen.dart';
import '../view/product_screen.dart';
import '../view/sopping_screen.dart';

class product1_provider extends ChangeNotifier
{
  List images = [
    "assets/images/1i.jpg",
    "assets/images/2i.jpg",
    "assets/images/3i.jpg",
    "assets/images/4i.jpeg",
    "assets/images/5i.jpeg",
    "assets/images/6i.jpg",
    "assets/images/7i.jpg",
  ];

  List name = [
    "vagabond sack",
    "Stella sunglasses",
    "Whiteny belt",
    "Strut earrings",
    "Varsity socks",
    "Weave keyring",
    "Garden strand"
  ];

  List name2 = [
    "White prinstripe shirt",
    "Chambray shirt",
    "Serf and purf shirt",
    "Sunshirt dress",
    "Chambray shirt",

  ];

  List images2 = [
    "assets/images/1j.jpg",
    "assets/images/2j.jpg",
    "assets/images/3j.jpg",
    "assets/images/4j.jpg",
    "assets/images/5j.jpg",
  ];

  DateTime time = DateTime(2023,16,10,15);

  void change(DateTime dt)
  {
    time = dt;
    notifyListeners();
  }

  List Screens = [
    product1_screen(),
    product2_screen(),
    shopping_screen()
  ];
}
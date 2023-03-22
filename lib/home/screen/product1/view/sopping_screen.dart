import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/product_provider.dart';

class shopping_screen extends StatefulWidget {
  const shopping_screen({Key? key}) : super(key: key);

  @override
  State<shopping_screen> createState() => _shopping_screenState();
}

class _shopping_screenState extends State<shopping_screen> {
  product1_provider? pf, pt;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<product1_provider>(context, listen: false);
    pt = Provider.of<product1_provider>(context, listen: true);
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 8),
                    child: Text("Shopping Cart",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoTextField(
                padding: EdgeInsets.all(10),
                prefix: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:
                      Icon(CupertinoIcons.person, color: Colors.grey, size: 15),
                ),
                placeholder: "Name",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoTextField(
                padding: EdgeInsets.all(10),
                prefix: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.envelope_fill,
                      color: Colors.grey, size: 15),
                ),
                placeholder: "Email",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoTextField(
                padding: EdgeInsets.all(10),
                prefix: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.location_solid,
                      color: Colors.grey, size: 15),
                ),
                placeholder: "Location",
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoTextField(
                padding: EdgeInsets.all(10),
                prefix: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(CupertinoIcons.time_solid,
                      color: Colors.grey, size: 15),
                ),
                placeholder: "Delievery time",
                suffix: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "${pt!.time.year} - ${pt!.time.month} - ${pt!.time.day}  ${pt!.time.hour}:${pt!.time.minute}"),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  pt!.change(value);
                },
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:
                        Image.asset("assets/images/4i.jpeg", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Strut earrings"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("\$ 150", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("\$ 150"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:
                        Image.asset("assets/images/1i.jpg", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("vagabond sack"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("\$ 200", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("\$ 200"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child:
                        Image.asset("assets/images/2i.jpg", fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Stella sunglasses"),
                      SizedBox(
                        height: 2,
                      ),
                      Text("\$ 190", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("\$ 190"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Shipping \$21", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Tax \$10.32", style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Total \$540"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

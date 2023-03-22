import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';



class product2_screen extends StatefulWidget {
  const product2_screen({Key? key}) : super(key: key);

  @override
  State<product2_screen> createState() => _product2_screenState();
}

class _product2_screenState extends State<product2_screen> {
  product1_provider? hf;
  product1_provider? ht;

  @override
  Widget build(BuildContext context) {
    hf = Provider.of<product1_provider>(context, listen: false);
    ht = Provider.of<product1_provider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<product1_provider>(
              builder: (context, value, child) => Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset("${ht!.images2[index]}",
                              fit: BoxFit.cover
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${ht!.name2[index]}"),
                            Text("\$ 70"),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(CupertinoIcons.add_circled),
                        )
                      ],
                    ),
                  ),
                  itemCount: hf!.images2.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
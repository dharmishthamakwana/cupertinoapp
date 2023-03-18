import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product1_provider.dart';

class product1_screen extends StatefulWidget {
  const product1_screen({Key? key}) : super(key: key);

  @override
  State<product1_screen> createState() => _product1_screenState();
}

class _product1_screenState extends State<product1_screen> {
  p1_provider? p1False;
  p1_provider? p1True;
  @override
  Widget build(BuildContext context) {

    p1False = Provider.of<p1_provider>(context,listen: false);
    p1True = Provider.of<p1_provider>(context,listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Consumer<p1_provider>(
              builder: (context, value, child) => Expanded(
                child: ListView.builder(itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,width: 70,
                            child: Image.asset("${p1True!.images[index]}",fit: BoxFit.cover),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${p1True!.name[index]}"),
                              Text("\$ 120"),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(CupertinoIcons.add_circled),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          height: 1,width: double.infinity,color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                  itemCount: 7,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
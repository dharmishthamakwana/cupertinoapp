import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_provider.dart';

class product1_screen extends StatefulWidget {
  const product1_screen({Key? key}) : super(key: key);

  @override
  State<product1_screen> createState() => _product1_screenState();
}

class _product1_screenState extends State<product1_screen> {
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
              height: 100,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey6,
                border: Border(
                  bottom: BorderSide(color: CupertinoColors.inactiveGray),
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cupertino Store',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            child: Image.asset("${ht!.images[index]}",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${ht!.name[index]}"),
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
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

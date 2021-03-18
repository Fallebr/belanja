import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Vans OldSkool Classic', price: 1200000),
    Item(name: 'Vans OG Autentic', price: 1300000),
    Item(name: 'Vans Autentic Classic', price: 1250000),
    Item(name: 'Vans Slip on Checker Board', price: 1200000),
    Item(name: 'Vans Slip on Autentic ', price: 900000),
    Item(name: 'Vans Autentic x Iron Maiden', price: 2300000),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              margin: EdgeInsets.all(6),
              child: ListView.builder(
                  padding: EdgeInsets.all(6),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                        onTap: () {
                          //Navigator.pushNamed(context, '/item');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPage(tempItem: item)),
                          );
                        },
                        child: Container(
                            margin: EdgeInsets.all(9),
                            child: Card(
                              child: Row(
                                children: [
                                  Expanded(child: Text(item.name)),
                                  Expanded(
                                      child: Text(
                                    item.price.toString(),
                                    textAlign: TextAlign.end,
                                  ))
                                ],
                              ),
                            )
                            )
                            );
                  })
                  )
                  ),
    );
  }
}

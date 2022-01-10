import 'package:flutter/material.dart';
import 'package:se380_project/screens/second_page.dart';

import './data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
        actions: [
          IconButton(
            //second page to meals page
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SecondPage())),
              icon: Icon(Icons.clear)),
        ],
      ),
      body: GridView(
        children: CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
      ),
    );
  }
}

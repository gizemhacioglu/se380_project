import 'package:flutter/material.dart';
import 'package:se380_project/screens/second_page.dart';
import 'package:se380_project/screens/secon_page_main.dart';

import '../data.dart';
import '../widgets/category_item.dart';

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
                  .push(MaterialPageRoute(builder: (_) => DietApp())),
              icon: Icon(Icons.clear)),
        ],
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
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

import 'package:flutter/material.dart';
import 'package:se380_project/screens/second_page.dart';

import './categories.dart';

void main() => runApp(MealsPage());

class MealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      home: CategoriesScreen(),
    );
  }
}

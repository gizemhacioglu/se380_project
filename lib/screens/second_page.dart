import 'package:flutter/material.dart';
import 'package:se380_project/mealpage.dart';
import 'package:se380_project/screens/secon_page_main.dart';

import '../categories.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Second Page', home: HomePage2());
  }
}

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text('Second Page'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DietApp()));
              },
              icon: Icon(Icons.clear)),
          IconButton(
              //second page to meals page
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MealsPage())),
              icon: Icon(Icons.search)),
        ],
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesScreen()));
                      },
                    ),
                    hintText: 'Search Meal...',
                    border: InputBorder.none),
              ),
            ),
          )),
      backgroundColor: Colors.grey.shade900,
    );
  }
}

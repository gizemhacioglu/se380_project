import 'package:flutter/material.dart';
import 'package:se380_project/mealpage.dart';
import 'package:se380_project/screens/secon_page_main.dart';
import 'package:se380_project/widgets/meal_item.dart';

import 'categories.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Second Page', home: HomePage2());
  }
}

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      'Second Page.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Load',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                      child: Text('Value: ',
                          style: TextStyle(
                            fontSize: 20,
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

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

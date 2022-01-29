import 'package:flutter/material.dart';

class Deneme extends StatelessWidget {
  late final String calorie;
  int sum = 0;
  Deneme({required this.calorie});

  _sum() {
    sum += calorie as int;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: TextButton(
                  onPressed: _sum(),
                  child: Text("Calculate"),
                ),
              ),
              Container(
                child: Text(sum.toString()),
              ),
            ],
          ),
          /*body: Container(
        child: TextButton(
          onPressed: _sum(),
          child: Text("Calculate"),
        ),
        
      ),*/
        ));
  }
}

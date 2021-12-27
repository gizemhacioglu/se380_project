import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:se380_project/widgets/auth_form.dart';
import 'package:se380_project/screens/authentication_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application Name",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthenticationScreen(),
    );
  }
}

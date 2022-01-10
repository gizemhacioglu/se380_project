import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:se380_project/screens/secon_page_main.dart';
import 'package:se380_project/screens/second_page.dart';
import 'package:se380_project/widgets/auth_form.dart';
import 'package:se380_project/screens/authentication_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application Name",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.pink,
        accentColor: Colors.pink,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
      home: AuthenticationScreen(),
      /*StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext ctx, snapshot) {
                if (FirebaseAuth.instance.currentUser != null) {
                  return DietApp();
                }
                return AuthenticationScreen();
              }),*/
    );
  }
}

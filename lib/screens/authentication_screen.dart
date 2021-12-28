import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:se380_project/widgets/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _authentication = FirebaseAuth.instance;
  void _submitAuthenticationForm(
    String email,
    String username,
    String password,
    bool isLogin,
    BuildContext ctx,
  ) async {
    UserCredential authResult;

    try {
      if (isLogin) {
        authResult = await _authentication.signInWithEmailAndPassword(
            email: email, password: password) as UserCredential;
      } else {
        authResult = await _authentication.createUserWithEmailAndPassword(
            email: email, password: password) as UserCredential;
      }
    } on PlatformException catch (error) {
      var message = "Please check your credentials!";

      if (error.message != null) {
        message = error.message!;
      }
      Scaffold.of(ctx).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Theme.of(ctx).errorColor,
      ));
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AuthenticationForm(
        _submitAuthenticationForm,
      ),
    );
  }
}

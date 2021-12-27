import 'package:flutter/material.dart';

class AuthenticationForm extends StatefulWidget {
  const AuthenticationForm({Key? key}) : super(key: key);

  @override
  _AuthenticationFormState createState() => _AuthenticationFormState();
}

class _AuthenticationFormState extends State<AuthenticationForm> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  String _userEmail = "";
  String _userName = "";
  String _userPassword = "";

  void _trySubmit() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(25),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                    key: ValueKey("email"),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return "Please enter a valid email address!";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email address",
                    ),
                    onSaved: (value) {
                      _userEmail = value!;
                    }),
                if (!_isLogin)
                  TextFormField(
                      key: ValueKey("username"),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 5) {
                          return "User name must be contain at least 5 characters!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "User Name",
                      ),
                      onSaved: (value) {
                        _userName = value!;
                      }),
                TextFormField(
                    key: ValueKey("password"),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 8) {
                        return "Password must be contain at least 8 characters!";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    obscureText: true,
                    onSaved: (value) {
                      _userPassword = value!;
                    }),
                SizedBox(height: 15),
                RaisedButton(
                  child: Text(_isLogin ? "Login" : "Sign Up"),
                  onPressed: _trySubmit,
                ),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text(_isLogin
                      ? "Create new account"
                      : "I already have an account"),
                  onPressed: () {
                    setState(() {
                      _isLogin = !_isLogin;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

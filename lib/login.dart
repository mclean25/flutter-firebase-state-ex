import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import "./auth.dart";

class LoginPage extends StatelessWidget {
  void _signIn(AuthService authService) {
    authService.signInAnonymously();
  }

  @override
  Widget build(BuildContext context) {
    var authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: RaisedButton(
          onPressed: () => {_signIn(authService)},
          child: Text("Sign in"),
        ),
      ),
    );
  }
}

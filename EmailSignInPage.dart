import 'package:flutter/material.dart';
import 'package:swastil11/SignInEmailForm.dart';
import 'package:swastil11/services.dart';

class EmailSignInPage extends StatelessWidget {
  EmailSignInPage({@required this.auth});
  final AuthBase auth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 10,
            child: EmailSignInForm(auth: auth,),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],

    );
  }
}

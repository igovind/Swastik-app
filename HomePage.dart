import 'package:flutter/material.dart';
import 'services.dart';

class HomePage extends StatelessWidget {

  HomePage({@required this.auth});
  final AuthBase auth;
  Future<void> _signOut() async{
    await auth.signOut();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
        actions: <Widget>[
          FlatButton(
            child: Text('Logout',
              style: TextStyle(
                fontSize: 18,
                color:Colors.white,
              ),
            ),
            onPressed: _signOut,
          )
        ],
      ),
      body: Center(
        child: Text('Welcome to the app',
        style: TextStyle(
            fontSize: 20,
          color: Colors.orange[900],
        ),
        ),
        ),

    );
  }
}

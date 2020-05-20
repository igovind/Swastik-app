
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swastil11/EmailSignInPage.dart';
import 'package:swastil11/services.dart';
import 'SignInButton.dart';
import 'SocialSignInButton.dart';

class SignInPage extends StatelessWidget {
  SignInPage({@required this.auth});
  final AuthBase auth;
  Future<void> _signInAnonymously() async{
   try{
     await auth.signInAnonymously();
   }
   catch(e){
     print(e.toString());
   }
}
  Future<void> _signInWithGoogle() async{
    try{
      await auth.signInWithGoogle();
    }
    catch(e){
      print(e.toString());
    }
  }
  Future<void> _signInWithFacebook() async{
    try{
      await auth.signInWithFacebook();
    }
    catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swastik'),
        centerTitle: true,
        backgroundColor:Colors.orange[900],
      ),
      body: Center(child: _buildContent(context)),
    );
  }
  void _signInWithEmail(BuildContext context ){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context)=>EmailSignInPage(auth: auth,),
      ),
    );
  }
  Widget _buildContent(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 70,),
            Flexible(
              //margin:EdgeInsets.all(16),
              child:Image.asset('images/swastik.jpg'),
            ),
            Text('Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize:30,
              ),
            ),
            SizedBox(height: 8,),
            SocialSignInButton(
              imageAsset: 'images/google-logo.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              height: 50.0,
              onPressed:_signInWithGoogle,
            ),
            SizedBox(height: 8),
            SocialSignInButton(
              imageAsset: 'images/facebook-logo.png',
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              height: 50.0,
              onPressed:_signInWithFacebook,
            ),
            SizedBox(height: 8),
            SignInButton(
              text: 'Sign in with Email',
              textColor: Colors.white,
              color: Colors.teal[700],
              height: 50.0,
              onPressed:()=> _signInWithEmail(context),
            ),
            SizedBox(height:8),
            Text('Or'),
            SizedBox(height: 8),
            SignInButton(
              text: 'Go Anonymous',
              textColor: Colors.black,
              color: Colors.lime[300],
              height: 50.0,
              onPressed: _signInAnonymously,
            ),
          ],
        ),
      ),
    );
  }
}

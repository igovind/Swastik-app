import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'services.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swastik',
      theme: ThemeData
      (
        primarySwatch: Colors.deepOrange,
      ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
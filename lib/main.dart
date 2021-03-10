import 'package:flutter/material.dart';
import 'package:jobprot/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JOB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: <String,WidgetBuilder>{
        "/login":(BuildContext context)=>LoginScreen()
      },
      home: LoginScreen(),
    );
  }
}

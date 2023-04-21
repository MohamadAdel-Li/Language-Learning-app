import 'package:first_application/basketball.dart';
import 'package:flutter/material.dart';

//import 'basketball.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: basketball(),
    );
  }
}

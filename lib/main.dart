import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/homepage.dart';

import 'pages/dropdown.dart';
import 'pages/firstdrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

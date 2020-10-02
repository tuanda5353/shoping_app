import 'package:flutter/material.dart';
import 'package:shoping_app/routes.dart';
import 'package:shoping_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      initialRoute: '/',
      routes: routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learing_mvvm/locator.dart';
import 'package:learing_mvvm/ui/views/login_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: LoginView(),
    );
  }
}

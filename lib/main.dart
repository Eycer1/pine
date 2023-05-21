import 'package:flutter/material.dart';
import 'package:pine/routes/routes.dart';
import 'package:pine/pages/login.dart';

void main(List<String> args) {
  return runApp(const PineApp());
}

class PineApp extends StatelessWidget {
  const PineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pine Application',
        // routes: routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.lightBlue, fontFamily: 'Nunito'),
        home: const LoginPage());
  }
}

import 'package:flutter/material.dart';
import 'package:use_case_log/view/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          primaryColor: Colors.amber,
          primarySwatch: Colors.purple,
        ),
        home: const Home());
  }
}

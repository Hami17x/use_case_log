import 'package:flutter/material.dart';
import 'package:use_case_log/model/custom_model.dart';
import 'package:use_case_log/view/details.dart';

import '../core/logger_mixin.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with Logger {
  @override
  void init() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text("$index"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Details(deger: "$index"),
              ));
            },
          );
        },
      ),
    );
  }

  @override
  PageKeys get key => PageKeys.home;

  @override
  CustomModel get model => CustomModel(description: "main page");
}

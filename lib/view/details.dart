import 'package:flutter/material.dart';

import '../core/logger_mixin.dart';
import '../model/custom_model.dart';

class Details extends StatefulWidget {
  const Details({Key? key, required this.deger}) : super(key: key);
  final String deger;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with Logger {
  @override
  void init() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(widget.deger),
      ),
    );
  }

  @override
  PageKeys get key => PageKeys.detail;

  @override
  CustomModel get model =>
      CustomModel(id: widget.deger, description: "Detail Page");
}

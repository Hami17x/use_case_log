// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import '../model/custom_model.dart';

mixin Logger<T extends StatefulWidget> on State<T> {
  PageKeys get key;
  CustomModel get model;
  void init();
  @override
  void initState() {
    init();
    ProjectLog.instance.logClassName(this);
    ProjectLog.instance.logPageKey(key);
    ProjectLog.instance.logCustomModel(model);
    super.initState();
  }
}

//eager singleton
class ProjectLog {
  static ProjectLog? _instance;
  static ProjectLog get instance {
    _instance ??= ProjectLog._init();
    return _instance!;
  }

  ProjectLog._init();

  void logClassName<T>(T page) {
    log(page.toString());
  }

  void logPageKey(PageKeys key) {
    log(key.name.toString());
  }

  void logCustomModel(CustomModel model) {
    log(model.toJson());
  }
}

enum PageKeys { home, detail }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movi_ui_design/src/configs/appTheme.dart';
import 'package:movi_ui_design/src/pages/homePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      theme: AppTheme.appTheme,
      home: HomePage(),
    );
  }
}

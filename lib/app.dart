import 'package:flutter/material.dart';
import 'package:flutter_common/widgets/_widgets.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AppScaffold(),
    );
  }
}

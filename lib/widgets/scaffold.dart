import 'package:flutter/material.dart';
import 'package:flutter_common/util/routes.dart';
import 'package:get/get.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Common')),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.home.name,
        onGenerateRoute: (settings) {
          var route = Routes.getRoute(settings.name);
          return route?.page;
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 72,
      ),
    );
  }
}

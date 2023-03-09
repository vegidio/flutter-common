import 'package:flutter/material.dart';
import 'package:flutter_common/screens/_screens.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _Scaffold(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Common')),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/home',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/home':
              return GetPageRoute(page: () => const HomeScreen());

            case '/auth':
              return GetPageRoute(page: () => const AuthScreen());
          }

          return null;
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 72,
      ),
    );
  }
}

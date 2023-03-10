import 'package:flutter/material.dart';
import 'package:flutter_common/util/routes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(children: [
        SizedBox(
          height: 100,
          width: 100,
          child: ElevatedButton(
            onPressed: () => Get.toNamed(Routes.auth.name, id: 1),
            child: const Text('Test'),
          ),
        ),
      ]),
    );
  }
}

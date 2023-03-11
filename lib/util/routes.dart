import 'package:flutter/foundation.dart';
import 'package:flutter_common/screens/_screens.dart';
import 'package:get/get.dart';

enum Routes {
  home('Home'),
  auth('Authentication');

  final String title;
  const Routes(this.title);

  String get name {
    return '/${describeEnum(this)}';
  }

  GetPageRoute get page {
    switch (this) {
      case Routes.home:
        return GetPageRoute(page: () => const HomeScreen());
      case Routes.auth:
        return GetPageRoute(page: () => const AuthScreen());
    }
  }

  static Routes? getRoute(String? name) {
    return Routes.values.firstWhereOrNull((e) => e.name == name);
  }
}

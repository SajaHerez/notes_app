import 'package:flutter/material.dart';

class RoutingUtil {
  RoutingUtil._();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static push(String route, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(route, arguments: arguments);
  }

  static pop() {
    navigatorKey.currentState!.pop();
  }

  static pushReplacement(String route, {Object? arguments}) {
    navigatorKey.currentState!
        .pushReplacementNamed(route, arguments: arguments);
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(child: Text("Error")),
      );
    });
  }
}

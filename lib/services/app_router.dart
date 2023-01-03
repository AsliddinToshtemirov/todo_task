import 'package:flutter/material.dart';
import 'package:todo_task/presentation/pages/recycle_bin.dart';
import 'package:todo_task/presentation/pages/home_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case ResycleBin.id:
        return MaterialPageRoute(builder: (_) => const ResycleBin());
      case HomePage.id:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return null;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:riverpod_train/pages/todo_list_page.dart';

class AppRoutes {
  static const String todoListPage = 'todoListPage';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case todoListPage:
        return _buildRoute(const TodoListPage(), settings);
      default:
        return _buildRoute(null, settings);
    }
  }

  static _buildRoute(Widget? widget, RouteSettings settings) {
    if (widget == null) {
      return null;
    }
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}

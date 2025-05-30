import 'package:circle_app/core/widgets/bottom_nav_bar.dart';
import 'package:circle_app/features/first/presentation/pages/fisrt_page.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.firstPage:
        return MaterialPageRoute(builder: (_) => const FisrtPage());
      case Routes.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}

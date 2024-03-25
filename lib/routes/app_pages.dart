import 'package:flutter/widgets.dart';
import 'package:step_counter/routes/app_routes.dart';
import 'package:step_counter/views/count_screen.dart';
import 'package:step_counter/views/dashboard_screen.dart';
import 'package:step_counter/views/splash_screen.dart';
import 'package:step_counter/views/status_screen.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.splash: (context) => SplashScreen(),
      AppRoutes.dashboard: (context) => DashboardScreen(),
      AppRoutes.countscreen: (context) => CountScreen(),
      AppRoutes.statusscreen: (context) => StatusScreen(),
    };
  }
}

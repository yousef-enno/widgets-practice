import 'package:flutter/material.dart';
import 'package:flutter_widget_exploration/core/routes/routes.dart';
import 'package:flutter_widget_exploration/features/challenge1/presentation/dismissible_list_view.dart';
import 'package:flutter_widget_exploration/features/challenge2/presentation/Interactive_physics_widget.dart';
import 'package:flutter_widget_exploration/features/home/presentation/home_view.dart';
import 'package:flutter_widget_exploration/features/miniapp/presentation/screens/main_screen.dart';
import 'package:flutter_widget_exploration/features/miniapp/presentation/screens/widget_three.dart';
import 'package:flutter_widget_exploration/features/miniapp/presentation/screens/widget_two.dart';
import 'package:flutter_widget_exploration/features/miniapp/presentation/screens/widget_one.dart';

class AppRoutes {
 static Route? generateRoutes (RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.challenge1:
        return MaterialPageRoute(builder: (_) => DismissibleListView());
      case Routes.challenge2:
        return MaterialPageRoute(builder: (_) => InteractivePhysicsWidget());
      case Routes.miniApp:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case Routes.widget1:
        return MaterialPageRoute(builder: (_) => WidgetOne());
      case Routes.widget2:
        return MaterialPageRoute(builder: (_) => WidgetTwo());
      case Routes.widget3:
        return MaterialPageRoute(builder: (_) => WidgetThree());
      default:
        return null;
    }
  }
}

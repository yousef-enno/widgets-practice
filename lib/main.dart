import 'package:flutter/material.dart';
import 'package:flutter_widget_exploration/core/routes/app_routes.dart';
import 'package:flutter_widget_exploration/core/routes/routes.dart';

void main() {
  runApp(FlutterWidgetsChallenge());
}

class FlutterWidgetsChallenge extends StatelessWidget {
  const FlutterWidgetsChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: AppRoutes.generateRoutes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:speedoz/view/generate.dart';
import 'package:speedoz/view/home.dart';

class RouteName {
  static String homeScreen = "/";
  static String generateScreen = "/generateScreen";
  static String addMealCostScreen = "/addMealCostScreen";
}

Map<String, WidgetBuilder> routes({Object? arg}) => {
      RouteName.homeScreen: (context) => const HomeScreen(),
      RouteName.generateScreen: (context) => const GenerateScreen(),
      // RouteName.addMealCostScreen: (context) => const AddMealCostScreen(),
    };

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  final Function? builder =
      routes(arg: routeSettings.arguments)[routeSettings.name];
  if (builder != null) {
    final Route route = MaterialPageRoute(
        settings: routeSettings, builder: (context) => builder(context));
    return route;
  } else {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
              body: Center(
                child: Text('Page not found for ${routeSettings.name}'),
              ),
            ));
  }
}

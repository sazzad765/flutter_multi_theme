import 'package:flutter/material.dart';
import 'package:speedoz/view/home.dart';

class RouteName {
  static String homeScreen = "/";
  static String addDepositScreen = "/addDepositScreen";
  static String addMealCostScreen = "/addMealCostScreen";
}

Map<String, WidgetBuilder> routes({Object? arg}) => {
      RouteName.homeScreen: (context) => const HomeScreen(),
      // RouteName.addDepositScreen: (context) => const AddDeposit(),
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

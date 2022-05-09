import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:speedoz/constant/constant.dart';
import 'package:speedoz/routes.dart';
import 'package:speedoz/theme/ThemeManager.dart';

void main() async {
  runApp(MultiProvider(providers:  [
    ChangeNotifierProvider(create: (ctx) => ThemeNotifier()),
    // ChangeNotifierProvider(create: (ctx) => NavigationViewState()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, _) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'OwnLikee',
              theme: theme.getTheme(),

              // darkTheme: ThemeData(
              //   brightness: Brightness.dark,
              //   /* dark theme settings */
              // ),
              // themeMode: ThemeMode.dark,
              initialRoute: RouteName.homeScreen,
              onGenerateRoute: onGenerateRoute,
            ));
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

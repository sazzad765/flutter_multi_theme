import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:speedoz/constant/constant.dart';
import 'package:speedoz/routes.dart';
import 'package:speedoz/theme/ThemeManager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hybrid Theme'),
        actions: [Switch(value: theme.isDark, onChanged: (value) {
          if(!value){
            theme.setLightMode();
          }else{
            theme.setDarkMode();
          }
        },)],
      ),
      body: Center(child: Column(children: [
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, RouteName.generateScreen);

        }, child: Text('Ge'))
      ],),),
    );
  }
}

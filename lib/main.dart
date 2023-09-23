import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gcommeric_app_ui/constants.dart';
import 'package:gcommeric_app_ui/pages/home.dart';
import 'package:gcommeric_app_ui/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GCOMMERIC APP UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: customColor, fontFamily: "Ubuntu"),
      home: const Login(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case 'home':
            return CupertinoPageRoute(
              builder: (_) => const HomeScreen(),
              settings: settings,
            );
        }
        return null;
      },
    );
  }
}

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'home.dart';
import 'login.dart';
import 'screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      onGenerateRoute: (settings) {
        if (settings.name == 'screen') {
          final planetData = settings.arguments as Map<String, String>? ?? {};
          return MaterialPageRoute(
            builder: (context) => Screen(planet: planetData),
          );
        }
        if (settings.name == 'home') return MaterialPageRoute(builder: (context) => Home_screen());
        return MaterialPageRoute(builder: (context) => Login_screen());
      },
    );
  }
}
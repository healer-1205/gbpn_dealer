import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gbpn_dealer/home/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Ensure status bar styling is set correctly after the app builds
    Future.delayed(Duration.zero, () {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Transparent status bar
        statusBarIconBrightness:
            Brightness.dark, // Light icons for dark backgrounds
        systemNavigationBarColor: Colors.white, // Bottom nav bar color
        systemNavigationBarIconBrightness:
            Brightness.dark, // Dark icons for bottom nav
      ));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      builder: (context, child) {
        return SafeArea(
          // Wrap all pages in SafeArea
          child: child ?? Container(),
        );
      },
      home: const MyHomePage(),
    );
  }
}

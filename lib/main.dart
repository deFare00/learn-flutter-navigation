import 'package:flutter/material.dart';

import 'pages/login_page.dart';
import 'pages/dashboard_page.dart';
import 'pages/profile_page.dart';
import 'pages/about_page.dart';
import 'pages/settings_page.dart';
import 'pages/product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      initialRoute: "/",

      routes: {
        "/": (context) => const LoginPage(),
        "/dashboard": (context) => const DashboardPage(),
        "/profile": (context) => const ProfilePage(),
        "/about": (context) => const AboutPage(),
        "/settings": (context) => const SettingsPage(),
        "/products": (context) => const ProductPage(),
      },
    );
  }
}

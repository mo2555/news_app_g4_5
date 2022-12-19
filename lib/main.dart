import 'package:flutter/material.dart';
import 'package:news_app_g4_5/providers/api_provider.dart';
import 'package:news_app_g4_5/providers/bottom_nav_bar_provider.dart';
import 'package:news_app_g4_5/view/home/my_home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (ctx) {
          return BottomNavBarProvider();
        },
      ),
      ChangeNotifierProvider(
        create: (ctx) {
          return APIProvider();
        },
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeScreen(),
    );
  }
}

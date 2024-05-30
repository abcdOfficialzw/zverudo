import 'package:flutter/material.dart';
import 'package:zverudo/app/home_page.dart';
import 'package:zverudo/utils/theme/color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zverudo Mobile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        // textTheme: materialTextTheme()
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        //textTheme: materialTextTheme()
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

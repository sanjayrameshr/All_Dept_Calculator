import 'package:flutter/material.dart';
import 'home.dart'; // Make sure this path is correct for your home page file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'GPA Calculator', // Title for the app
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Sets the primary color for the app
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple, // Consistent app bar color
          foregroundColor: Colors.white, // Text color for app bar
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adapts UI to platform
      ),
      home: const HomePage(), // Sets HomePage as the initial screen
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyWebsite());
}

class MyWebsite extends StatelessWidget {
  const MyWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shweta Burgula',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.grey[900],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.grey[850], // Solid dark grey background
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Welcome to my site!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Ensure high contrast
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'This is a simple Flutter web starter page.',
                  style: TextStyle(color: Colors.white70), // Subtle secondary text
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

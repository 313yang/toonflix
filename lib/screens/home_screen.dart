import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Theme.of(context).cardColor,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Today's Toon's",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
import 'package:toonflix/services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: Color(0xFF642EE0),
      ),
      home: HomeScreen(),
    );
  }
}

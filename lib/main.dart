import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/money_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onClicked({bool isPlus = false}) {
    setState(() {
      if (isPlus) {
        counter += 1;
      } else {
        counter > 0 ? counter -= 1 : counter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click Count",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              Text(
                "$counter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => onClicked(isPlus: true),
                    icon: Icon(
                      Icons.add_box,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () => onClicked(),
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

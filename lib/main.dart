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
  List<int> numbers = [];

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Pretendard',
          textTheme: TextTheme(
              titleLarge: TextStyle(
            color: Colors.white,
          ))),
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? MyLargeTitle() : Text("loading..."),
              IconButton(
                onPressed: toggleTitle,
                icon: Icon(Icons.tab),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print("init!");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    print("build:");
    return Text(
      "My Large Title",
      style: TextStyle(
        color: Theme.of(context).textTheme.titleLarge?.color,
        fontSize: 32,
      ),
    );
  }
}

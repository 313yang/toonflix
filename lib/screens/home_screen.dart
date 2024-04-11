import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const initSecound = 60 * 25;
  int totalSeconds = initSecound;
  bool isPlay = false;
  int totalPomodors = 0;
  late Timer timer;

  void onTick(timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodors += 1;
        totalSeconds = initSecound;
      });
      onPausePresetd();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isPlay = true;
    });
  }

  void onPausePresetd() {
    timer.cancel();
    setState(() {
      isPlay = false;
    });
  }

  void onRestartPressed() {
    onPausePresetd();
    setState(() {
      totalSeconds = initSecound;
    });
  }

  String formatSecondToHourMinutes(seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                formatSecondToHourMinutes(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w800,
                  fontFeatures: <FontFeature>[
                    FontFeature.tabularFigures(),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    onPressed: isPlay ? onPausePresetd : onStartPressed,
                    iconSize: 128,
                    color: Theme.of(context).cardColor,
                    icon: Icon(
                      isPlay
                          ? Icons.pause_circle_outline
                          : Icons.play_circle_outline_outlined,
                    ),
                  ),
                ),
                Center(
                  child: IconButton(
                    iconSize: 32,
                    color: Theme.of(context).cardColor,
                    icon: Icon(Icons.restart_alt_rounded),
                    onPressed: onRestartPressed,
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pomodoros",
                          style: TextStyle(
                            fontSize: 20,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "$totalPomodors",
                          style: TextStyle(
                            fontSize: 50,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

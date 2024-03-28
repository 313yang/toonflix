import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hello, Yang",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Wellcome back",
                          style: TextStyle(
                            fontFamily: "Pretendard",
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    color: Colors.white70,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontFamily: "Pretendard",
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2B33A),
                          borderRadius: BorderRadius.circular(48)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 60,
                        ),
                        child: Text(
                          "Transfer",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

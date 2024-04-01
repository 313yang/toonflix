import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/money_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
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
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Wellcome back",
                            style: TextStyle(
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
                      color: Colors.white70,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "\$5 194 482",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        bgColor: 0xFFF2B33A,
                        text: "Transfer",
                      ),
                      Button(
                        color: Colors.white,
                        text: "Request",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Wallet",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MoneyCard(
                    title: "Euro",
                    amount: 6328,
                    code: "EUR",
                    icon: Icons.euro_symbol_sharp,
                    order: 1,
                  ),
                  MoneyCard(
                    title: "Doller",
                    amount: 633428,
                    code: "USD",
                    icon: Icons.attach_money_sharp,
                    order: 2,
                  ),
                  MoneyCard(
                    title: "Bitcoin",
                    amount: 323444,
                    code: "BTC",
                    icon: Icons.currency_bitcoin_sharp,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

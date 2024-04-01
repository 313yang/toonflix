import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget {
  final String title, code;
  final int amount, order;
  final IconData icon;
  final bool isInvert;
  final double offsetY;
  final Color black = Color(0xFF1F2123);

  MoneyCard({
    super.key,
    required this.title,
    required this.amount,
    required this.code,
    required this.icon,
    required this.order,
  })  : isInvert = order.isEven,
        offsetY = (order - 1) * -20;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge, // overflow: hidden
        decoration: BoxDecoration(
          color: isInvert ? Colors.white : black,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isInvert ? black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount.toString(),
                        style: TextStyle(
                          color: isInvert ? black : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInvert ? black : Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: Offset(-3, 14),
                  child: Icon(
                    icon,
                    color: isInvert ? black : Colors.white,
                    size: 80,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

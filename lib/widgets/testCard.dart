import 'package:flutter/material.dart';

enum cardUnit { Euro, Dollar, Rupee }

enum cardColor { black, white }

class TestCard extends StatelessWidget {
  final cardUnit unit;
  final String count;
  final cardColor color;
  final Icon icon;

  const TestCard({
    super.key,
    required this.unit,
    required this.count,
    required this.color,
    required this.icon,
  });

  String convertCardUnit(cardUnit unit) {
    switch (unit) {
      case cardUnit.Dollar:
        return "USD";
      case cardUnit.Euro:
        return "EUR";
      case cardUnit.Rupee:
        return "INR";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: color == .black ? Color(0xFF1F2123) : Colors.white,
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
                  unit.name,
                  style: TextStyle(
                    color: color == .black ? Colors.white : Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      count,
                      style: TextStyle(
                        color: color == .black ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      convertCardUnit(unit),
                      style: TextStyle(
                        color: color == .black
                            ? Colors.white.withValues(alpha: 0.8)
                            : Colors.black.withValues(alpha: 0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(offset: Offset(-5, 12), child: icon),
            ),
          ],
        ),
      ),
    );
  }
}

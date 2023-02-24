import 'package:flutter/material.dart';

import '../../../../domain/Assets/styles.dart';

class HorizontalScoreIndicator extends StatelessWidget {
  final Color? white;
  final Color? black;
  final double? size;

  const HorizontalScoreIndicator(
      {super.key, this.white, this.black, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 99,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  bottomLeft: Radius.circular(3),
                ),
                color: white ?? ThemeColors.mainText,
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Text(
                  "1",
                  style: TextStyle(
                      color: ThemeColors.cardBackground,
                      fontSize: size ?? GeneralTheme.btnTextSize),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
                color: black ?? ThemeColors.mainThemeBackground,
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Text(
                  "1",
                  style: TextStyle(
                      color: ThemeColors.mainText,
                      fontSize: size ?? GeneralTheme.btnTextSize),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

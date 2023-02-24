import 'package:flutter/material.dart';

class ThemeColors {
  static Color mainText = const Color.fromRGBO(188, 200, 215, 1.0);
  static Color innerText = Color.fromARGB(255, 140, 149, 156);
  static Color activeMenu = Colors.redAccent;
  static Color mainThemeBackground = const Color.fromRGBO(30, 30, 38, 1);
  static Color cardBackground = const Color.fromRGBO(40, 41, 49, 1);
  static Color defaultBtnColor = const Color.fromARGB(255, 170, 49, 77);
  static Color defaultBtnTextColor = Colors.white;
  static Color defaultChessBlack = const Color.fromRGBO(181, 136, 99, 1);
  static Color defaultChessWhite = const Color.fromRGBO(240, 217, 181, 1);
  static Color mistakeColor = const Color.fromARGB(230, 157, 134, 0);
  static Color inaccuracieColor = const Color.fromARGB(230, 0, 126, 157);
}

class GeneralTheme {
  static BorderRadius mainRounding = const BorderRadius.all(Radius.circular(5));
  static EdgeInsets boxPadding = const EdgeInsets.fromLTRB(10, 10, 10, 10);
  static EdgeInsets boxMargin = const EdgeInsets.fromLTRB(5, 5, 5, 5);
  static EdgeInsets rowTopMargin = const EdgeInsets.fromLTRB(0, 5, 0, 0);
  static EdgeInsets rowInnerTopMargin = const EdgeInsets.fromLTRB(0, 10, 0, 0);
  static TextStyle setupP = TextStyle(
    color: ThemeColors.innerText,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.italic,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static TextStyle setuph1 = TextStyle(
      color: ThemeColors.mainText,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.italic,
      fontSize: 25,
      fontWeight: FontWeight.bold);

  static TextStyle gridHeaderStyle = TextStyle(
    color: ThemeColors.mainText,
    fontSize: 15,
  );

  static InputDecoration inputDecoration = InputDecoration(
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          color: ThemeColors.mainText, width: 1, style: BorderStyle.solid),
    ),
    labelStyle: TextStyle(color: ThemeColors.mainText),
    fillColor: ThemeColors.mainText,
    focusColor: ThemeColors.mainText,
    filled: false,
    border: UnderlineInputBorder(
      borderSide: BorderSide(
          color: ThemeColors.mainText, width: 1, style: BorderStyle.solid),
    ),
  );

  static TextStyle setText(
      {Color? textColor = const Color.fromRGBO(188, 200, 215, 1.0),
      double? size = 14}) {
    return TextStyle(color: textColor, fontSize: size);
  }

  static TextStyle inputDecorationText =
      TextStyle(color: ThemeColors.mainText, fontSize: 20);

  static Icon tableHeaderIcon(IconData icon, double? i, Color color) {
    return Icon(
      icon,
      color: color,
      size: i ?? 50,
    );
  }

  static String defaultImage =
      "https://yt3.ggpht.com/ytc/AL5GRJVSGg8d7zwUuFS4Xb5-qZnHQC47ViYgo4N-OhShuw=s48-c-k-c0x00ffffff-no-rj";
  static double btnTextSize = 12;
  static double btnIconSize = 14;

  static getSize(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width <= 1920) {
      return 12.0;
    }

    return 14.0;
  }
}

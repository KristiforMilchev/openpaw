import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../domain/Assets/styles.dart';

// ignore: must_be_immutable
class ElevatedIconButton extends StatelessWidget {
  Function? callback;
  Color? btnBackground;
  Color? btnIconFontColor;
  Color? btnFontColor;
  double? btnIconFontSize;
  double? btnTextFontSize;
  CrossAxisAlignment? btnAlignment;
  String label;
  IconData? icon;
  FaIcon? faIcon;

  ElevatedIconButton(
      {super.key,
      this.callback,
      this.btnBackground,
      this.btnIconFontColor,
      this.btnFontColor,
      this.btnIconFontSize,
      this.btnTextFontSize,
      this.icon,
      this.btnAlignment,
      required this.label,
      this.faIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (() => callback?.call()),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => btnBackground ?? ThemeColors.defaultBtnColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: btnAlignment ?? CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: icon != null,
            child: Icon(icon,
                color: btnIconFontColor ?? ThemeColors.defaultBtnTextColor,
                size: btnIconFontSize ?? GeneralTheme.btnIconSize),
          ),
          Visibility(
            visible: faIcon != null,
            child: faIcon ?? const Placeholder(),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: TextStyle(
                color: btnFontColor ?? ThemeColors.defaultBtnTextColor,
                fontSize: btnTextFontSize ?? GeneralTheme.btnTextSize),
          ),
        ],
      ),
    );
  }
}

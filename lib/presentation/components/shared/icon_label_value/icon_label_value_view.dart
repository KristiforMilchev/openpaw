import 'package:flutter/material.dart';
import '../../../../../domain/Assets/styles.dart';

// ignore: must_be_immutable
class IconLabelValue extends StatelessWidget {
  Color? color;
  final Widget? widget;
  final IconData? icon;
  final String label;
  late String? value;

  IconLabelValue({
    super.key,
    required this.label,
    this.widget,
    this.color,
    this.icon,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Visibility(
            visible: widget != null ? true : false,
            child: widget ?? const Placeholder(),
          ),
          Visibility(
            visible: icon != null ? true : false,
            child: Icon(
              icon,
              color: color ?? ThemeColors.mainText,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: TextStyle(
              color: color ?? ThemeColors.mainText,
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            value ?? "",
            style: TextStyle(
              color: color ?? ThemeColors.innerText,
            ),
          ),
        ],
      ),
    );
  }
}

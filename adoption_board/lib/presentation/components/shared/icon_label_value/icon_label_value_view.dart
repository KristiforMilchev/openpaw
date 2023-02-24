import 'package:flutter/material.dart';
import '../../../../../domain/Assets/styles.dart';

// ignore: must_be_immutable
class IconLabelValue extends StatelessWidget {
  Color? color;
  final Widget? widget;
  final IconData? icon;
  final String label;
  late String? value;
  late double? size;

  IconLabelValue(
      {super.key,
      required this.label,
      this.widget,
      this.color,
      this.icon,
      this.value,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            size: size == null ? 14 : size!,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style:
              TextStyle(color: color ?? ThemeColors.mainText, fontSize: size),
          textAlign: TextAlign.end,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value ?? "",
          style: TextStyle(
            color: color ?? ThemeColors.innerText,
            fontSize: (size == null ? 14 : size! - 2),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../domain/Assets/styles.dart';

class InputBox extends StatelessWidget {
  final Function onChange;
  final String placeholder;
  final String label;

  const InputBox({
    super.key,
    required this.label,
    required this.onChange,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: ThemeColors.mainText,
        fontSize: GeneralTheme.getSize(context),
        height: 2,
      ),
      onChanged: (value) => onChange.call(value),
      decoration: InputDecoration(
        constraints: const BoxConstraints(maxHeight: 35),
        enabledBorder: OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(color: ThemeColors.innerText, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderSide: BorderSide(color: ThemeColors.innerText, width: 0.0),
        ),
        border: const OutlineInputBorder(),
        focusColor: ThemeColors.activeMenu,
        hoverColor: ThemeColors.activeMenu,
        fillColor: ThemeColors.mainText,
        hintStyle: TextStyle(
          color: ThemeColors.mainText,
        ),
        hintText: placeholder,
        label: Text(
          label,
          style: TextStyle(
            color: ThemeColors.mainText,
            fontSize: GeneralTheme.getSize(context),
          ),
        ),
      ),
    );
  }
}

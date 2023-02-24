import 'package:flutter/material.dart';

import '../../../../domain/Assets/styles.dart';

class CardComponent extends StatelessWidget {
  final Widget render;

  const CardComponent({Key? key, required this.render}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: GeneralTheme.boxPadding,
          margin: GeneralTheme.boxMargin,
          decoration: BoxDecoration(
              borderRadius: GeneralTheme.mainRounding,
              color: ThemeColors.cardBackground),
          transformAlignment: Alignment.center,
          child: render,
        )
      ],
    );
  }
}

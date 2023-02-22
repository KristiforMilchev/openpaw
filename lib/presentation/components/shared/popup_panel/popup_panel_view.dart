import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../card_component.dart';

// ignore: must_be_immutable
class PopupPanel extends StatelessWidget {
  late double? x;
  late double? y;
  late Widget render;
  late bool isVisible;
  PopupPanel({
    super.key,
    required this.x,
    required this.y,
    required this.isVisible,
    required this.render,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Positioned(
          top: y ?? 0,
          left: x ?? 0,
          child: SizedBox(
            width: 200,
            height: 300,
            child: CardComponent(render: render),
          )),
    );
  }
}
